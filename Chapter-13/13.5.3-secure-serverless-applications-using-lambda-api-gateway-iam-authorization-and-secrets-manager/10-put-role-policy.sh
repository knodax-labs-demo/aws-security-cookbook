aws iam put-role-policy \
  --role-name "$ROLE_NAME" \
  --policy-name SecureLambdaLeastPrivilegePolicy \
  --policy-document file://lambda-policy.json
