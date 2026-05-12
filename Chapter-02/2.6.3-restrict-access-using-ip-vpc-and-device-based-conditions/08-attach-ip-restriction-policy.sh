aws iam attach-user-policy \
  --user-name DemoUser \
  --policy-arn arn:aws:iam::$ACCOUNT_ID:policy/IPRestrictionPolicy
