read AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN <<< $(aws sts assume-role \
  --role-arn arn:aws:iam::$ACCOUNT_ID:role/CrossAccountSecureRole \
  --role-session-name external-session \
  --external-id "$EXTERNAL_ID" \
  --query 'Credentials.[AccessKeyId,SecretAccessKey,SessionToken]' \
  --output text)

export AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN
