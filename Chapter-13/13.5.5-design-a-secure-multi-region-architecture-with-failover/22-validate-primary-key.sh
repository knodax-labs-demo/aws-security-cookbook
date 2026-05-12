aws kms describe-key \
  --key-id "$PRIMARY_KEY_ID" \
  --region "$PRIMARY_REGION" \
  --query 'KeyMetadata.MultiRegion'
