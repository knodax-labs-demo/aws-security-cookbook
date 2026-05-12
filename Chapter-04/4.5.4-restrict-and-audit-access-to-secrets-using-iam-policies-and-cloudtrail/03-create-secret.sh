aws secretsmanager create-secret \
  --name $SECRET_NAME \
  --description "API key for application" \
  --secret-string '{"apiKey":"ABC123XYZ"}' \
  --region $REGION
