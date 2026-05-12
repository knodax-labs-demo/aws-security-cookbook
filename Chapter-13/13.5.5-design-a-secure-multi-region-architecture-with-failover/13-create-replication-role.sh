aws iam create-role \
  --role-name "$REPLICATION_ROLE_NAME" \
  --assume-role-policy-document file://replication-trust-policy.json
