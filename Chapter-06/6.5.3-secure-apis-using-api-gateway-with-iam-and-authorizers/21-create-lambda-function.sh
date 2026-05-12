LAMBDA_ARN=$(aws lambda create-function \
  --function-name $LAMBDA_FUNCTION_NAME \
  --runtime python3.12 \
  --role $LAMBDA_ROLE_ARN \
  --handler authorizer.lambda_handler \
  --zip-file fileb://authorizer.zip \
  --region $REGION \
  --query 'FunctionArn' \
  --output text)
