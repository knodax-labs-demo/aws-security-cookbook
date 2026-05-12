aws lambda add-permission \
  --function-name DisableStaleCredentials \
  --statement-id AllowEventBridge \
  --action lambda:InvokeFunction \
  --principal events.amazonaws.com \
  --source-arn arn:aws:events:$REGION:$ACCOUNT_ID:rule/StaleCredentialCheck
