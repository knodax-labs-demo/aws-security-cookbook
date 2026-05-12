export LAMBDA_ROLE_ARN=$(aws iam get-role \
  --role-name "$REMEDIATION_ROLE_NAME" \
  --query 'Role.Arn' \
  --output text)
