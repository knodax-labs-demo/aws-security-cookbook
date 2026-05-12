export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export BUCKET_NAME=secure-bucket-$ACCOUNT_ID-$REGION
