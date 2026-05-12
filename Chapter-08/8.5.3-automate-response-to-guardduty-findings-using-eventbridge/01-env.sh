cat <<EOF > env.sh
export REGION=us-east-1

export RULE_NAME=GuardDutyAutoResponse
export FUNCTION_NAME=GuardDutyRemediation
export TOPIC_NAME=GuardDutyAlerts
export ROLE_NAME=GuardDutyLambdaRole

export ACCOUNT_ID=$(aws sts get-caller-identity \
  --query Account \
  --output text)
EOF
