aws lambda create-function \
  --function-name $FUNCTION_NAME \
  --runtime python3.12 \
  --role $ROLE_ARN \
  --handler incident_response.lambda_handler \
  --zip-file fileb://incident_response.zip
