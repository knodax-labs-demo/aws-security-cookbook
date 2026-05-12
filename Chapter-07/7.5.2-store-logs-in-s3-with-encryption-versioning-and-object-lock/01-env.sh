cat <<EOF > env.sh
export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export BUCKET_NAME=secure-logs-$ACCOUNT_ID
export KMS_ALIAS=alias/logs-key
EOF
