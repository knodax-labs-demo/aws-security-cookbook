aws iam delete-role-policy \
  --role-name "$REPLICATION_ROLE_NAME" \
  --policy-name S3ReplicationPolicy
