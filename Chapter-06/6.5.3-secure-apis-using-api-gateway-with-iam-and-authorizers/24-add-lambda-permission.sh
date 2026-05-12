aws lambda add-permission \
  --function-name $LAMBDA_FUNCTION_NAME \
  --statement-id apigateway-authorizer-permission \
  --action lambda:InvokeFunction \
  --principal apigateway.amazonaws.com \
  --source-arn arn:aws:execute-api:$REGION:$ACCOUNT_ID:$API_ID/authorizers/$AUTHORIZER_ID \
  --region $REGION
