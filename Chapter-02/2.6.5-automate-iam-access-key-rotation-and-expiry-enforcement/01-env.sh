cat <<EOF > env.sh
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export REGION=us-east-1
export KEY_MAX_AGE=90
EOF
