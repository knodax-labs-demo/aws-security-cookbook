export KMS_KEY_ID=$(aws kms create-key \
  --description "KMS key for CI/CD artifact encryption" \
  --query 'KeyMetadata.KeyId' \
  --output text \
  --region "$REGION")
