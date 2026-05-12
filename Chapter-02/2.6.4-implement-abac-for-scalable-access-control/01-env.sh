cat <<EOF > env.sh
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export REGION=us-east-1
export PROJECT_TAG=SecurityApp
export ENV_TAG=Dev
export BUCKET_NAME=abac-security-demo-$ACCOUNT_ID
EOF
