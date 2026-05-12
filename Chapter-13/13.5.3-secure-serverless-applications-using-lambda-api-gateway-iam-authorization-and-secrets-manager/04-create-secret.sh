aws secretsmanager create-secret \
  --name "$SECRET_NAME" \
  --secret-string '{"message":"Secure secret value"}' \
  --region "$REGION"
