export PRIMARY_KEY_ID=$(aws kms create-key \
  --multi-region \
  --description "Primary multi-region key for secure failover architecture" \
  --region "$PRIMARY_REGION" \
  --query 'KeyMetadata.KeyId' \
  --output text)

aws kms create-alias \
  --alias-name alias/secure-failover-key \
  --target-key-id "$PRIMARY_KEY_ID" \
  --region "$PRIMARY_REGION"
