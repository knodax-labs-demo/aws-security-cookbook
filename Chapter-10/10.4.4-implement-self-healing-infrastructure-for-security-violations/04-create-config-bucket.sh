export CONFIG_BUCKET=config-logs-$ACCOUNT_ID-$REGION
export CONFIG_ROLE_NAME=AWSConfigRecorderRole

aws s3api create-bucket \
  --bucket "$CONFIG_BUCKET" \
  --region "$REGION"
