aws configservice get-aggregate-compliance-details-by-config-rule \
  --configuration-aggregator-name "$AGGREGATOR_NAME" \
  --config-rule-name S3_BUCKET_PUBLIC_READ_PROHIBITED \
  --compliance-type NON_COMPLIANT \
  --region "$REGION"
