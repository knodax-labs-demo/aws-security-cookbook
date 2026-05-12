aws logs tail /aws/lambda/$FUNCTION_NAME \
  --follow \
  --region $REGION
