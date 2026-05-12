KEY_ID=$(aws kms create-key \
  --description "Default EBS encryption key" \
  --query 'KeyMetadata.KeyId' \
  --output text)
