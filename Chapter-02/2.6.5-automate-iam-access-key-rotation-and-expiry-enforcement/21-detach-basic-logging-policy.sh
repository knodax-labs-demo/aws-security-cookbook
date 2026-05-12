aws iam detach-role-policy \
  --role-name IAMKeyRotationRole \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole
