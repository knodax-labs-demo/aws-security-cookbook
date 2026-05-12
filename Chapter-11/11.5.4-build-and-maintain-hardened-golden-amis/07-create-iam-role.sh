aws iam create-role \
  --role-name "$ROLE_NAME" \
  --assume-role-policy-document file://imagebuilder-trust-policy.json
