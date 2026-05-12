aws lambda invoke \
  --function-name $LAMBDA_FUNCTION_NAME \
  --payload '{"source":"manual-test"}' \
  --cli-binary-format raw-in-base64-out \
  response.json \
  --region $REGION
cat response.json
