cat <<EOF > env.sh
export REGION=us-east-1
export INSTANCE_ID=i-xxxxxxxxxxxxxxxxx
export SNAPSHOT_TAG=ForensicSnapshot
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export SNAPSHOT_TAG=ForensicSnapshot
EOF
