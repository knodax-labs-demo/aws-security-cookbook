cat <<EOF > env.sh
export REGION=us-east-1

# Automatically capture current AWS account ID
export SECURITY_ACCOUNT_ID=$(aws sts get-caller-identity \
  --query Account \
  --output text)
EOF
