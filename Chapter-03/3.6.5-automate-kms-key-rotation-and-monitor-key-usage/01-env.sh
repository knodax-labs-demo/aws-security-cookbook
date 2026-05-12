cat <<EOF > env.sh
export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export KMS_KEY_ALIAS=alias/security-rotation-key
EOF
