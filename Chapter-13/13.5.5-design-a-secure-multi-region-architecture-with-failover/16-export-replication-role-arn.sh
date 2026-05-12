export REPLICATION_ROLE_ARN=$(aws iam get-role \
  --role-name "$REPLICATION_ROLE_NAME" \
  --query 'Role.Arn' \
  --output text)
