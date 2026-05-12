aws configservice put-organization-config-rule \
  --organization-config-rule-name org-s3-public-read-prohibited \
  --organization-managed-rule-metadata '{
    "RuleIdentifier": "S3_BUCKET_PUBLIC_READ_PROHIBITED"
  }' \
  --region "$REGION"
