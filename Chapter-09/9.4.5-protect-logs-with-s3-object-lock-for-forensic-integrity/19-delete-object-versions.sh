aws s3api delete-objects \
  --bucket $BUCKET_NAME \
  --delete file://versions.json
