aws stepfunctions create-state-machine \
  --name $STATE_MACHINE_NAME \
  --definition file://security-workflow.json \
  --role-arn arn:aws:iam::$ACCOUNT_ID:role/SecurityAutomationStepFunctionsRole \
  --region $REGION
