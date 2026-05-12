cat <<EOF > env.sh
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export REGION=us-east-1
export BOUNDARY_POLICY_NAME=DevBoundaryPolicy
export USER_NAME=DevUser
EOF
