aws lambda create-function \
  --function-name $FUNCTION_NAME \
  --runtime python3.12 \
  --role arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME \
  --handler lambda_function.lambda_handler \
  --zip-file fileb://function.zip \
  --environment Variables="{SECRET_NAME=$SECRET_NAME}" \
  --region $REGION
