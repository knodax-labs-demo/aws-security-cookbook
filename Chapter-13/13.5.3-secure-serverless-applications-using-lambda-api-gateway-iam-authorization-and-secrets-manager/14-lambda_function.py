cat <<'EOF' > lambda_function.py
import json
import os
import boto3

secretsmanager = boto3.client("secretsmanager")

SECRET_NAME = os.environ["SECRET_NAME"]

def lambda_handler(event, context):
    print(json.dumps({
        "message": "Request received",
        "requestId": context.aws_request_id
    }))

    query = event.get("queryStringParameters") or {}
    name = query.get("name", "User")

    if not name.replace(" ", "").isalnum():
        return {
            "statusCode": 400,
            "headers": {
                "Content-Type": "application/json"
            },
            "body": json.dumps({
                "error": "Invalid input"
            })
        }

    secret_response = secretsmanager.get_secret_value(
        SecretId=SECRET_NAME
    )

    secret = json.loads(secret_response["SecretString"])

    return {
        "statusCode": 200,
        "headers": {
            "Content-Type": "application/json"
        },
        "body": json.dumps({
            "message": f"Hello, {name}",
            "secretMessage": secret.get("message", "No message found")
        })
    }
EOF
