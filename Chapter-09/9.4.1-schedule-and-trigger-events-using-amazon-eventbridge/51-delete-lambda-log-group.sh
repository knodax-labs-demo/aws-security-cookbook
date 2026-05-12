aws logs delete-log-group \
  --log-group-name "/aws/lambda/$LAMBDA_FUNCTION_NAME" \
  --region $REGION
