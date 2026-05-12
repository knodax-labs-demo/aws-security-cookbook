aws lambda add-permission \
  --function-name $FUNCTION_NAME \
  --statement-id AllowEventBridgeInvoke \
  --action lambda:InvokeFunction \
  --principal events.amazonaws.com \
  --source-arn $(aws events describe-rule \
    --name $RULE_NAME \
    --query 'Arn' \
    --output text)
