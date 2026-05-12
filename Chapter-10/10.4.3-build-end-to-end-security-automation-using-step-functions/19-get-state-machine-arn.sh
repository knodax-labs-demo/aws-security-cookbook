STATE_MACHINE_ARN=$(aws stepfunctions list-state-machines \
  --query "stateMachines[?name=='$STATE_MACHINE_NAME'].stateMachineArn | [0]" \
  --output text \
  --region $REGION)
