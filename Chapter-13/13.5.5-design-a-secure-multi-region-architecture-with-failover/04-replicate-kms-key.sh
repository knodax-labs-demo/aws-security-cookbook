export SECONDARY_KEY_ARN=$(aws kms replicate-key \
  --key-id "$PRIMARY_KEY_ID" \
  --replica-region "$SECONDARY_REGION" \
  --region "$PRIMARY_REGION" \
  --query 'ReplicaKeyMetadata.Arn' \
  --output text)

export SECONDARY_KEY_ID=$(echo "$SECONDARY_KEY_ARN" | awk -F/ '{print $2}')

aws kms create-alias \
  --alias-name alias/secure-failover-key \
  --target-key-id "$SECONDARY_KEY_ID" \
  --region "$SECONDARY_REGION"
