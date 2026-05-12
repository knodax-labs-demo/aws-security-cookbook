aws s3api put-object \
  --bucket "$BUCKET_NAME" \
  --key unencrypted.txt \
  --body test-data.txt
