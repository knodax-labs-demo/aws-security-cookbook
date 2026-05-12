aws iam create-role \
  --role-name CrossAccountSecureRole \
  --assume-role-policy-document file://trust-policy.json
