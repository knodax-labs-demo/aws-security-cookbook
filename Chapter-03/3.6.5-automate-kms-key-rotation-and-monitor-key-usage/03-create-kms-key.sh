KMS_KEY_ID=$(aws kms create-key \
  --description "Key for rotation demo" \
  --query 'KeyMetadata.KeyId' \
  --output text)
