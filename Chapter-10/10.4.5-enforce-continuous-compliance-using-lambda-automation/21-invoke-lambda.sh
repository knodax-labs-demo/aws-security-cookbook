aws lambda invoke \
  --function-name "$FUNCTION_NAME" \
  --cli-binary-format raw-in-base64-out \
  --payload "{\"bucketName\":\"$TEST_BUCKET\"}" \
  response.json \
  --region "$REGION"
