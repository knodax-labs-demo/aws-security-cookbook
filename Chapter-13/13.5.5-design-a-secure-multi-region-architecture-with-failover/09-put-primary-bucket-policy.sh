aws s3api put-bucket-policy \
  --bucket "$PRIMARY_BUCKET" \
  --policy file://primary-bucket-policy.json \
  --region "$PRIMARY_REGION"
