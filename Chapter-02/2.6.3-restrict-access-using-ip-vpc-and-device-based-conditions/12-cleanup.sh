aws iam detach-user-policy \
  --user-name DemoUser \
  --policy-arn arn:aws:iam::$ACCOUNT_ID:policy/IPRestrictionPolicy

aws iam delete-policy \
  --policy-arn arn:aws:iam::$ACCOUNT_ID:policy/IPRestrictionPolicy

aws iam delete-user \
  --user-name DemoUser
