aws sts assume-role \
  --role-arn arn:aws:iam::$ACCOUNT_ID:role/CrossAccountSecureRole \
  --role-session-name external-session \
  --external-id "$EXTERNAL_ID"
