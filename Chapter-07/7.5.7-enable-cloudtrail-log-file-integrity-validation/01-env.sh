cat <<EOF > env.sh
export REGION=us-east-1
export TRAIL_NAME=SecureTrail
export BUCKET_NAME=cloudtrail-logs-$(aws sts get-caller-identity --query Account --output text)
EOF
