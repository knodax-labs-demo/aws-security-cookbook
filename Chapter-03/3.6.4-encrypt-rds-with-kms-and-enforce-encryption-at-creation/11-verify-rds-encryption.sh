aws rds describe-db-instances \
  --db-instance-identifier $DB_INSTANCE_ID \
  --query 'DBInstances[0].[StorageEncrypted,KmsKeyId]' \
  --output table
