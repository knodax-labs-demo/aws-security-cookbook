aws logs describe-log-groups \
  --log-group-name-prefix "/aws/lambda/$LAMBDA_FUNCTION_NAME" \
  --region $REGION
