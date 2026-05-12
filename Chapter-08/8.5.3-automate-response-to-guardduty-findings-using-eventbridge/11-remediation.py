cat <<'EOF' > remediation.py
import json
import boto3

ec2 = boto3.client('ec2')
sns = boto3.client('sns')

TOPIC_ARN = "REPLACE_WITH_SNS_TOPIC_ARN"

def lambda_handler(event, context):

    detail = event.get("detail", {})

    instance_id = (
        detail.get("resource", {})
        .get("instanceDetails", {})
        .get("instanceId")
    )

    if instance_id:
        ec2.stop_instances(
            InstanceIds=[instance_id]
        )

    sns.publish(
        TopicArn=TOPIC_ARN,
        Subject="GuardDuty Alert",
        Message=json.dumps(event, indent=2)
    )

    return {
        "status": "Remediation executed"
    }
EOF
