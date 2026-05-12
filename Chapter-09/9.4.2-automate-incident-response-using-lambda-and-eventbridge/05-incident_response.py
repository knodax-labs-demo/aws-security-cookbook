cat <<'EOF' > incident_response.py
import json
import boto3

ec2 = boto3.client('ec2')
sns = boto3.client('sns')

TOPIC_ARN = "REPLACE_WITH_SNS_TOPIC_ARN"

def lambda_handler(event, context):
    detail = event.get("detail", {})
    instance_id = detail.get("instance-id")

    if instance_id:
        ec2.stop_instances(InstanceIds=[instance_id])

    sns.publish(
        TopicArn=TOPIC_ARN,
        Subject="Incident Response Triggered",
        Message=json.dumps(event)
    )

    return {"status": "Incident handled"}
EOF
