aws s3api put-bucket-policy \
  --bucket $BUCKET_NAME \
  --policy file://enforce-tls-policy.json
