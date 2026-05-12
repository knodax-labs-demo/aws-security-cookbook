cat <<EOF > env.sh
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export REGION=us-east-1
export ANALYZER_NAME=security-analyzer
export BUCKET_NAME=access-analyzer-demo-$ACCOUNT_ID
EOF
