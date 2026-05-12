export KEY_ID=$(aws kms create-key \
  --description "Encryption key for secure data" \
  --query 'KeyMetadata.KeyId' \
  --output text \
  --region "$REGION")
