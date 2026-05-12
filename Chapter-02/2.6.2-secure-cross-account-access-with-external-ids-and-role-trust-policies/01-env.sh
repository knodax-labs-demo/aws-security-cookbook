cat <<EOF > env.sh
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export REGION=us-east-1
export TRUSTED_ACCOUNT_ID=<TRUSTED_ACCOUNT_ID>
export EXTERNAL_ID=$(openssl rand -hex 16)
EOF
