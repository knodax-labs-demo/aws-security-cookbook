cat <<'EOF' > compliance.py
import json
import boto3

s3 = boto3.client("s3")

def lambda_handler(event, context):
    print("Received event:", json.dumps(event))

    detail = event.get("detail", {})
    bucket_name = (
        detail.get("requestParameters", {}).get("bucketName")
        or event.get("bucketName")
    )

    if not bucket_name:
        return {
            "status": "No bucket name found",
            "event": event
        }

    s3.put_public_access_block(
        Bucket=bucket_name,
        PublicAccessBlockConfiguration={
            "BlockPublicAcls": True,
            "IgnorePublicAcls": True,
            "BlockPublicPolicy": True,
            "RestrictPublicBuckets": True
        }
    )

    return {
        "status": "Compliance enforced",
        "bucket": bucket_name
    }
EOF
