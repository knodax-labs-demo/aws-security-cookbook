export API_ID=$(aws apigateway create-rest-api \
  --name $API_NAME \
  --query 'id' \
  --output text)
