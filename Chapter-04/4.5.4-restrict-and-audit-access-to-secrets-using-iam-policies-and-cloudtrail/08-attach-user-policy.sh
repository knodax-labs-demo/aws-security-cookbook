aws iam attach-user-policy \
  --user-name $USER_NAME \
  --policy-arn arn:aws:iam::$ACCOUNT_ID:policy/RestrictSecretAccessPolicy
