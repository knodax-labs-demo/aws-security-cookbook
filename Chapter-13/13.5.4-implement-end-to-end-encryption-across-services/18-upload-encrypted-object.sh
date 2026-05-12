aws s3api put-object \
  --bucket "$BUCKET_NAME" \
  --key test-data.txt \
  --body test-data.txt \
  --server-side-encryption aws:kms \
  --ssekms-key-id "$KEY_ID"
