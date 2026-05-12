aws s3api put-bucket-policy \
  --bucket $BUCKET_NAME \
  --policy file://enforce-https-policy.json
