cat <<EOF > env.sh
export REGION=us-east-1
export BUCKET_NAME=security-logs-bucket
export DATABASE_NAME=security_logs_db
export TABLE_NAME=cloudtrail_logs
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export BUCKET_NAME=security-logs-$ACCOUNT_ID-$REGION
EOF
