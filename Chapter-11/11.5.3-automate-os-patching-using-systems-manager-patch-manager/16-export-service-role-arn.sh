export SERVICE_ROLE_ARN=$(aws iam get-role \
  --role-name "$SERVICE_ROLE_NAME" \
  --query 'Role.Arn' \
  --output text)
