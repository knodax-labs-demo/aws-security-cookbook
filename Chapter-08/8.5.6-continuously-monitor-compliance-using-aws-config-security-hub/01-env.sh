cat <<EOF > env.sh
export REGION=us-east-1

export ACCOUNT_ID=$(aws sts get-caller-identity \
  --query Account \
  --output text)

export BUCKET_NAME=config-bucket-$ACCOUNT_ID
export CONFIG_ROLE_NAME=AWSConfigRole
EOF
