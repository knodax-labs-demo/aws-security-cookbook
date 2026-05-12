aws logs delete-log-group \
  --log-group-name "/aws/lambda/$FUNCTION_NAME" \
  --region "$REGION" 2>/dev/null || true
