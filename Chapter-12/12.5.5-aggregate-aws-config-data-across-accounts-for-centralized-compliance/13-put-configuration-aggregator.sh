aws configservice put-configuration-aggregator \
  --configuration-aggregator-name "$AGGREGATOR_NAME" \
  --organization-aggregation-source '{
    "AllAwsRegions": true,
    "RoleArn": "arn:aws:iam::'"$ADMIN_ACCOUNT_ID"':role/aws-service-role/config.amazonaws.com/AWSServiceRoleForConfig"
  }' \
  --region "$REGION"
