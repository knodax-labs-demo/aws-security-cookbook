aws lambda create-function \
  --function-name $FUNCTION_NAME \
  --runtime python3.12 \
  --role "$LAMBDA_ROLE_ARN" \
  --handler quarantine.lambda_handler \
  --zip-file fileb://quarantine.zip \
  --environment Variables="{QUARANTINE_SG=$QUARANTINE_SG}" \
  --region $REGION
