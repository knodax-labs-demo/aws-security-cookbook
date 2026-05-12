aws iam attach-role-policy \
  --role-name $TASK_ROLE_NAME \
  --policy-arn arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess
