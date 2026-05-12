LAMBDA_ARN=$(aws lambda get-function \
  --function-name $LAMBDA_FUNCTION_NAME \
  --region $REGION \
  --query 'Configuration.FunctionArn' \
  --output text)
