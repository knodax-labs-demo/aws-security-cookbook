aws kms delete-alias \
  --alias-name alias/secure-failover-key \
  --region "$SECONDARY_REGION"
