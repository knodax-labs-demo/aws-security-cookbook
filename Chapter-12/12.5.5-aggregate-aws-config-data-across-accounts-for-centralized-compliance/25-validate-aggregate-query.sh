aws configservice select-aggregate-resource-config \
  --configuration-aggregator-name "$AGGREGATOR_NAME" \
  --expression "SELECT accountId, resourceType LIMIT 10" \
  --region "$REGION"
