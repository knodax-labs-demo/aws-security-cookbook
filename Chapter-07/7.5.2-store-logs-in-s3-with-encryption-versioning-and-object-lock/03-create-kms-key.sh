KMS_KEY_ID=$(aws kms create-key \
  --description "KMS key for log encryption" \
  --query 'KeyMetadata.KeyId' \
  --output text)
