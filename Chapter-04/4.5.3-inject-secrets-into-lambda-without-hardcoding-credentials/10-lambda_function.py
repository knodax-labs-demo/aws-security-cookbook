cat <<'EOF' > lambda_function.py
import json
import os
import boto3

secrets_client = boto3.client("secretsmanager")


def lambda_handler(event, context):
    secret_name = os.environ["SECRET_NAME"]

    response = secrets_client.get_secret_value(
        SecretId=secret_name
    )

    secret = json.loads(response["SecretString"])

    return {
        "statusCode": 200,
        "body": json.dumps({
            "message": "Secret retrieved successfully",
            "username": secret.get("username")
        })
    }
EOF
