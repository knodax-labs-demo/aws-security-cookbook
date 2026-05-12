cat <<EOF > env.sh
export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export BUCKET_NAME=secure-https-bucket-$ACCOUNT_ID
EOF
