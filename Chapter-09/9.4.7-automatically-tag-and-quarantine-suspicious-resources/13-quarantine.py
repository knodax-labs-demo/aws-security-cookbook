cat > quarantine.py <<EOF
import json
import boto3
import os

ec2 = boto3.client("ec2")

QUARANTINE_SG = os.environ["QUARANTINE_SG"]

def lambda_handler(event, context):
    print("Received event:", json.dumps(event))

    instance_id = event.get("instance_id")

    if not instance_id:
        detail = event.get("detail", {})
        instance_id = detail.get("instance-id")

    if not instance_id:
        return {
            "statusCode": 400,
            "body": "No instance ID found in event"
        }

    ec2.modify_instance_attribute(
        InstanceId=instance_id,
        Groups=[QUARANTINE_SG]
    )

    ec2.create_tags(
        Resources=[instance_id],
        Tags=[
            {"Key": "SecurityStatus", "Value": "Quarantined"},
            {"Key": "QuarantineReason", "Value": "SuspiciousActivity"}
        ]
    )

    return {
        "statusCode": 200,
        "body": f"Instance {instance_id} moved to quarantine security group {QUARANTINE_SG}"
    }
EOF
