cat <<EOF > env.sh
export REGION=us-east-1
export POLICY_NAME=ZeroTrustMFASensitiveActions
export INSTANCE_ID=i-xxxxxxxxxxxxxxxxx
export TRAIL_NAME=ZeroTrustTrail
export LOG_BUCKET=zero-trust-logs-$(aws sts get-caller-identity --query Account --output text)
EOF
