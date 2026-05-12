aws iam attach-user-policy \
  --user-name test-ssm-user \
  --policy-arn arn:aws:iam::$ACCOUNT_ID:policy/ParameterStoreAccessPolicy
