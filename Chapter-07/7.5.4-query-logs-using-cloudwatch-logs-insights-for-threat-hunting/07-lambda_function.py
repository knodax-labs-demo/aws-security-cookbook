cat <<'EOF' > lambda_function.py
import json
import random

def lambda_handler(event, context):

    sample_logs = [
        "User login successful",
        "Failed password attempt from 192.168.1.10",
        "Unauthorized API request detected",
        "ERROR: Database connection timeout",
        "Exception: Access denied",
        "User authenticated successfully"
    ]

    message = random.choice(sample_logs)

    print(message)

    return {
        "statusCode": 200,
        "body": json.dumps(message)
    }
EOF
