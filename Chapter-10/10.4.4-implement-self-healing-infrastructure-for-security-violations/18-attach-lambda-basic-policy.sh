aws iam attach-role-policy \
  --role-name "$REMEDIATION_ROLE_NAME" \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole
