aws lambda create-function \
  --function-name $LAMBDA_FUNCTION_NAME \
  --runtime python3.12 \
  --role $LAMBDA_ROLE_ARN \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip \
  --region $REGION
