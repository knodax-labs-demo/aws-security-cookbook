aws iam create-role \
  --role-name IAMKeyRotationRole \
  --assume-role-policy-document file://trust-policy.json
