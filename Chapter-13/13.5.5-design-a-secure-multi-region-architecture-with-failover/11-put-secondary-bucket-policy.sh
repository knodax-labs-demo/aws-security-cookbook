aws s3api put-bucket-policy \
  --bucket "$SECONDARY_BUCKET" \
  --policy file://secondary-bucket-policy.json \
  --region "$SECONDARY_REGION"
