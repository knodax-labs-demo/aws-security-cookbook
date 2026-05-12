aws configservice put-delivery-channel \
  --delivery-channel '{
    "name": "default",
    "s3BucketName": "'"$CONFIG_BUCKET"'"
  }' \
  --region "$REGION"
