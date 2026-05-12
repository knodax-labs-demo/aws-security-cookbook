CWLOGS_ROLE_ARN=$(aws iam get-role \
  --role-name $CWLOGS_ROLE_NAME \
  --query 'Role.Arn' \
  --output text)
