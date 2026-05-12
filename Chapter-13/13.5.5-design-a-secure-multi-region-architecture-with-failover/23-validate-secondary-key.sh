aws kms describe-key \
  --key-id "$SECONDARY_KEY_ID" \
  --region "$SECONDARY_REGION" \
  --query 'KeyMetadata.MultiRegion'
