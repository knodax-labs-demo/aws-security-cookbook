API_ID=$(aws apigateway create-rest-api \
  --name $API_NAME \
  --region $REGION \
  --query 'id' \
  --output text)
