export CONFIG_ROLE_ARN=$(aws iam get-role \
  --role-name "$CONFIG_ROLE_NAME" \
  --query 'Role.Arn' \
  --output text)
