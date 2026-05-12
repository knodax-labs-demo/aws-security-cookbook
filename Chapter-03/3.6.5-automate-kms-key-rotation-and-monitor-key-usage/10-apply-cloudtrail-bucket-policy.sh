aws s3api put-bucket-policy \
  --bucket $TRAIL_BUCKET \
  --policy file://cloudtrail-bucket-policy.json
