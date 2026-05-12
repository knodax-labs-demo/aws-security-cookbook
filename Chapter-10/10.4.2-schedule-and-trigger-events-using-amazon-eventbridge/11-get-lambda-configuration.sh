aws lambda get-function-configuration \
  --function-name $LAMBDA_FUNCTION_NAME \
  --region $REGION \
  --query '[FunctionName,State,LastUpdateStatus]' \
  --output table
