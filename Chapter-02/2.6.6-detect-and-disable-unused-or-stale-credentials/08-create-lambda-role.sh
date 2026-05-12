aws iam create-role \
  --role-name StaleCredentialRole \
  --assume-role-policy-document file://trust-policy.json
