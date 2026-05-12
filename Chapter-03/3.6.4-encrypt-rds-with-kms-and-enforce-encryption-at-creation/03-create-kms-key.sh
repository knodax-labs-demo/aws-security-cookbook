KEY_ID=$(aws kms create-key \
  --description "KMS key for RDS encryption" \
  --query 'KeyMetadata.KeyId' \
  --output text)
