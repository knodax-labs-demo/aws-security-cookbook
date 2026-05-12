SCHEDULER_ROLE_ARN=$(aws iam get-role \
  --role-name $SCHEDULER_ROLE_NAME \
  --query 'Role.Arn' \
  --output text)

echo $SCHEDULER_ROLE_ARN
