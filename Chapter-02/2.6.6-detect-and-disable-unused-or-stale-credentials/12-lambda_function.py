cat <<EOF > lambda_function.py
import boto3
import datetime

iam = boto3.client('iam')

MAX_UNUSED_DAYS = 90

def lambda_handler(event, context):
    users = iam.list_users()['Users']

    for user in users:
        username = user['UserName']
        keys = iam.list_access_keys(UserName=username)['AccessKeyMetadata']

        for key in keys:
            last_used = key.get('CreateDate')
            age = (datetime.datetime.now(datetime.timezone.utc) - last_used).days

            if age > MAX_UNUSED_DAYS:
                print(f"Disabling stale key for {username}")
                iam.update_access_key(
                    UserName=username,
                    AccessKeyId=key['AccessKeyId'],
                   Status='Inactive'
                )
EOF
