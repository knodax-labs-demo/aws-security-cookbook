export CODEBUILD_ROLE_ARN=$(aws iam get-role \
  --role-name "$CODEBUILD_ROLE_NAME" \
  --query 'Role.Arn' \
  --output text)
