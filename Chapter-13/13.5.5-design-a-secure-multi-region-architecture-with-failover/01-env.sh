cat <<EOF > env.sh
export PRIMARY_REGION=us-east-1
export SECONDARY_REGION=us-west-2
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export PRIMARY_BUCKET=secure-primary-\$(aws sts get-caller-identity --query Account --output text)
export SECONDARY_BUCKET=secure-secondary-\$(aws sts get-caller-identity --query Account --output text)
export REPLICATION_ROLE_NAME=S3CrossRegionReplicationRole
export DOMAIN_NAME=example.com
export PRIMARY_RECORD=app.example.com
EOF
