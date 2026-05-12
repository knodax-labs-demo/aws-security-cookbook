aws secretsmanager create-secret \
  --name $SECRET_NAME \
  --description "Database password for Lambda demo" \
  --secret-string '{"username":"admin","password":"MySecurePassword123"}' \
  --region $REGION
