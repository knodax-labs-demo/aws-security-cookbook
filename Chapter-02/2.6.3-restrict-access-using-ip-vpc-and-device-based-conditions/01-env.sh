cat <<EOF > env.sh
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export REGION=us-east-1
export ALLOWED_IP="203.0.113.10/32" # replace it with allowed IP
export VPC_ID="vpc-xxxxxxxx"
export VPCE_ID="vpce-xxxxxxxx"
EOF
