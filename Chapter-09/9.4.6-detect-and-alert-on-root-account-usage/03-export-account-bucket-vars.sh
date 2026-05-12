export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export BUCKET_NAME=cloudtrail-root-logs-$ACCOUNT_ID
