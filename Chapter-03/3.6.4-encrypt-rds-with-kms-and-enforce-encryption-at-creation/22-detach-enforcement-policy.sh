aws iam detach-user-policy \
  --user-name DevUser \
  --policy-arn arn:aws:iam::$ACCOUNT_ID:policy/EnforceRDSEncryption
