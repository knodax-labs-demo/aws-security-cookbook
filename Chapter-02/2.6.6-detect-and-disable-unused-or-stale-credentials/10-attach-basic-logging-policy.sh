aws iam attach-role-policy \
  --role-name StaleCredentialRole \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole
