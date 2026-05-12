aws configservice put-config-rule \
  --config-rule "{
    \"ConfigRuleName\": \"$CONFIG_RULE_NAME\",
    \"Source\": {
      \"Owner\": \"AWS\",
      \"SourceIdentifier\": \"S3_BUCKET_PUBLIC_READ_PROHIBITED\"
    }
  }" \
  --region "$REGION"
