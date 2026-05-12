LAMBDA_ROLE_ARN=$(aws iam get-role \
  --role-name $LAMBDA_ROLE_NAME \
  --query 'Role.Arn' \
  --output text)

echo $LAMBDA_ROLE_ARN
