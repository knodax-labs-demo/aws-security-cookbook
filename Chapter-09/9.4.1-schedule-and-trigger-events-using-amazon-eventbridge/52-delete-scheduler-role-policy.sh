aws iam delete-role-policy \
  --role-name $SCHEDULER_ROLE_NAME \
  --policy-name InvokeLambdaPolicy
