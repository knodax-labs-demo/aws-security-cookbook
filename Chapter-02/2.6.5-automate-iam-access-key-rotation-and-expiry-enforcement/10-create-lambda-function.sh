aws lambda create-function \
  --function-name RotateIAMKeys \
  --runtime python3.12 \
  --role arn:aws:iam::$ACCOUNT_ID:role/IAMKeyRotationRole \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip
