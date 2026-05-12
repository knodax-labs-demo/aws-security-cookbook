aws configservice select-aggregate-resource-config \
  --configuration-aggregator-name "$AGGREGATOR_NAME" \
  --expression "SELECT accountId, resourceId, resourceType WHERE resourceType = 'AWS::EC2::SecurityGroup'" \
  --region "$REGION"
