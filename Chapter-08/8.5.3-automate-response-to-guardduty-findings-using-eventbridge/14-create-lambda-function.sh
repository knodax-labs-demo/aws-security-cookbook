ROLE_ARN=arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME
aws lambda create-function \
  --function-name $FUNCTION_NAME \
  --runtime python3.12 \
  --role $ROLE_ARN \
  --handler remediation.lambda_handler \
  --zip-file fileb://remediation.zip
