aws lambda create-function \
  --function-name "$FUNCTION_NAME" \
  --runtime python3.12 \
  --role "$LAMBDA_ROLE_ARN" \
  --handler compliance.lambda_handler \
  --zip-file fileb://compliance.zip \
  --region "$REGION"
