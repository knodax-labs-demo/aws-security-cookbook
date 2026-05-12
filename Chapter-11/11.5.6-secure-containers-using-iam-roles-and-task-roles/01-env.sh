cat <<EOF > env.sh
export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export TASK_ROLE_NAME=ECSTaskRole
export EXEC_ROLE_NAME=ECSExecutionRole
export CLUSTER_NAME=SecureCluster
export TASK_DEF_NAME=SecureTask
EOF
