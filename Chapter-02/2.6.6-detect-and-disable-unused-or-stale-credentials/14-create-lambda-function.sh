aws lambda create-function \
  --function-name DisableStaleCredentials \
  --runtime python3.12 \
  --role arn:aws:iam::$ACCOUNT_ID:role/StaleCredentialRole \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip
