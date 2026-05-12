aws s3api put-bucket-policy \
  --bucket "$LOG_BUCKET" \
  --policy file://cloudtrail-bucket-policy.json
