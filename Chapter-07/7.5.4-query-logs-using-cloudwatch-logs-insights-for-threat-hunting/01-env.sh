cat <<EOF > env.sh
export REGION=us-east-1

export FUNCTION_NAME=threat-hunting-demo
export ROLE_NAME=ThreatHuntingLambdaRole

export LOG_GROUP_NAME=/aws/lambda/$FUNCTION_NAME
EOF
