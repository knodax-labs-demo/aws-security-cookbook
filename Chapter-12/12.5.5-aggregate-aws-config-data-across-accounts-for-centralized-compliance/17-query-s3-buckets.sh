aws configservice select-aggregate-resource-config \
  --configuration-aggregator-name "$AGGREGATOR_NAME" \
  --expression "SELECT accountId, resourceId WHERE resourceType = 'AWS::S3::Bucket'" \
  --region "$REGION"
