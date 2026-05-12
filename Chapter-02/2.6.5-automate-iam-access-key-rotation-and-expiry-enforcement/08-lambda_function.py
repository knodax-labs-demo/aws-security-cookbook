import boto3
import datetime

iam = boto3.client('iam')

MAX_AGE = 90

def lambda_handler(event, context):
    users = iam.list_users()['Users']

    for user in users:
        username = user['UserName']
        keys = iam.list_access_keys(UserName=username)['AccessKeyMetadata']

        for key in keys:
            create_date = key['CreateDate']
            age = (datetime.datetime.now(datetime.timezone.utc) - create_date).days

            if age > MAX_AGE:
                print(f"Disabling old key for {username}")
                iam.update_access_key(
                    UserName=username,
                    AccessKeyId=key['AccessKeyId'],
                    Status='Inactive'
                )
