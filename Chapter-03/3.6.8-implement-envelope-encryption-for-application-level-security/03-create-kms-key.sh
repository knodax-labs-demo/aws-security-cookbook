KMS_KEY_ID=$(aws kms create-key \
  --description "Envelope encryption key" \
  --query 'KeyMetadata.KeyId' \
  --output text)
