aws logs describe-log-streams \
  --log-group-name "/aws/lambda/$LAMBDA_FUNCTION_NAME" \
  --order-by LastEventTime \
  --descending \
  --max-items 5 \
  --region $REGION
