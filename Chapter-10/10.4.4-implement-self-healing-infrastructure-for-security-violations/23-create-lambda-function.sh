aws lambda create-function \
  --function-name "$FUNCTION_NAME" \
  --runtime python3.12 \
  --role "$LAMBDA_ROLE_ARN" \
  --handler self_heal.lambda_handler \
  --zip-file fileb://self_heal.zip \
  --region "$REGION"
