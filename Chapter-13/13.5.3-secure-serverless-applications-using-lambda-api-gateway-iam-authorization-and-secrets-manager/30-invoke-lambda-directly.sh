aws lambda invoke \
  --function-name "$FUNCTION_NAME" \
  --cli-binary-format raw-in-base64-out \
  --payload '{"queryStringParameters":{"name":"Alice"}}' \
  response.json \
  --region "$REGION"
