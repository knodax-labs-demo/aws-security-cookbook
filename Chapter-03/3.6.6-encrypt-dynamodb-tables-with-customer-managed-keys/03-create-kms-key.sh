KMS_KEY_ID=$(aws kms create-key \
  --description "CMK for DynamoDB encryption " \
  --query 'KeyMetadata.KeyId' \
  --output text)
