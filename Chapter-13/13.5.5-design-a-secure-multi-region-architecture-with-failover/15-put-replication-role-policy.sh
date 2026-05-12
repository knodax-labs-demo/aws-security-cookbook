aws iam put-role-policy \
  --role-name "$REPLICATION_ROLE_NAME" \
  --policy-name S3ReplicationPolicy \
  --policy-document file://replication-policy.json
