cat <<'EOF' > security_handler.py
import json
import os
import boto3

ec2 = boto3.client("ec2")
sns = boto3.client("sns")

TOPIC_ARN = os.environ.get("TOPIC_ARN")

def lambda_handler(event, context):
    action = event.get("action")
    finding = event.get("finding", {})
    detail = finding.get("detail", finding)

    instance_id = (
        detail.get("resource", {})
        .get("instanceDetails", {})
        .get("instanceId")
    )

    if action == "validate":
        return {
            "valid": bool(instance_id),
            "instance_id": instance_id,
            "finding": finding
        }

    if action == "tag":
        if instance_id:
            ec2.create_tags(
                Resources=[instance_id],
                Tags=[
                    {"Key": "SecurityStatus", "Value": "UnderInvestigation"},
                    {"Key": "IncidentSource", "Value": "StepFunctions"}
                ]
            )
        return {
            "tagged": bool(instance_id),
            "instance_id": instance_id,
            "finding": finding
        }

    if action == "notify":
        sns.publish(
            TopicArn=TOPIC_ARN,
            Subject="Security Automation Workflow Triggered",
            Message=json.dumps(finding, default=str)
        )
        return {
            "notified": True,
            "instance_id": instance_id,
            "finding": finding
        }

    if action == "quarantine":
        quarantine_sg = event.get("quarantine_sg")
        if instance_id and quarantine_sg:
            ec2.modify_instance_attribute(
                InstanceId=instance_id,
                Groups=[quarantine_sg]
            )
        return {
            "quarantined": bool(instance_id and quarantine_sg),
            "instance_id": instance_id,
            "finding": finding
        }

    return {
        "message": "No matching action",
        "event": event
    }
EOF
