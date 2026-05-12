cat <<EOF > env.sh
export REGION=us-east-1
export TARGET_OU_NAME=Workloads
export TAG_POLICY_NAME=StandardTagPolicy
export SCP_NAME=DenyUntaggedEC2
EOF
