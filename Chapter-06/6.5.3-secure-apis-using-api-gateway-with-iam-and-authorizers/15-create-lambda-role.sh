LAMBDA_ROLE_ARN=$(aws iam create-role \
  --role-name $LAMBDA_ROLE_NAME \
  --assume-role-policy-document file://lambda-trust-policy.json \
  --query 'Role.Arn' \
  --output text)
