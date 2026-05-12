cat <<EOF > env.sh
export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export SECRET_NAME=prod/app/api-key
export USER_NAME=SecretReaderUser
export ROLE_NAME=SecretReaderRole
export TRAIL_NAME=SecretsAuditTrail
export BUCKET_NAME=secrets-audit-logs-$ACCOUNT_ID
EOF
