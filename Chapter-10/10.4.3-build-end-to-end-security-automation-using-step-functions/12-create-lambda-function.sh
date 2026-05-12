aws lambda create-function \
  --function-name $FUNCTION_NAME \
  --runtime python3.12 \
  --role arn:aws:iam::$ACCOUNT_ID:role/SecurityAutomationLambdaRole \
  --handler security_handler.lambda_handler \
  --zip-file fileb://security_handler.zip \
  --environment Variables="{TOPIC_ARN=$SNS_TOPIC_ARN}" \
  --region $REGION
