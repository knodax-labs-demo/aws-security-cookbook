cat <<EOF > env.sh
export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export STATE_MACHINE_NAME=SecurityAutomationWorkflow
export FUNCTION_NAME=SecurityAutomationHandler
export RULE_NAME=SecurityAutomationRule
export TOPIC_NAME=SecurityAutomationAlerts
EOF
