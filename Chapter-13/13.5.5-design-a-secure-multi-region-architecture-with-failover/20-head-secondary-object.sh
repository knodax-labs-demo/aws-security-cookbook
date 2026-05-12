aws s3api head-object \
  --bucket "$SECONDARY_BUCKET" \
  --key failover-test.txt \
  --region "$SECONDARY_REGION"
