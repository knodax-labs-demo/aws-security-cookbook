aws secretsmanager create-secret \
  --name "$SECRET_NAME" \
  --secret-string '{"password":"ReplaceWithStrongPassword"}' \
  --region "$REGION"
