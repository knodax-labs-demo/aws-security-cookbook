cat <<'EOF' > self_heal.py
import json
import boto3

s3 = boto3.client('s3')

def lambda_handler(event, context):
    detail = event.get("detail", {})
    resource_id = detail.get("resourceId")

    if resource_id:
        # Block public access
        s3.put_public_access_block(
            Bucket=resource_id,
            PublicAccessBlockConfiguration={
                'BlockPublicAcls': True,
                'IgnorePublicAcls': True,
                'BlockPublicPolicy': True,
                'RestrictPublicBuckets': True
            }
        )

    return {"status": "Remediation applied"}
EOF
