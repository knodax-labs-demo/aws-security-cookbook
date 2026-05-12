aws events put-targets \
  --rule $RULE_NAME \
  --targets "Id"="1","Arn"="$STATE_MACHINE_ARN","RoleArn"="arn:aws:iam::$ACCOUNT_ID:role/EventBridgeStepFunctionsRole" \
  --region $REGION
