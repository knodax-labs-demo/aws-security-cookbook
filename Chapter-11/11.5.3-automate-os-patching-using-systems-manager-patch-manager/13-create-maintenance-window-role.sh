aws iam create-role \
  --role-name "$SERVICE_ROLE_NAME" \
  --assume-role-policy-document file://mw-trust-policy.json
