aws s3api get-object-retention \
  --bucket $BUCKET_NAME \
  --key log.txt \
  --version-id $VERSION_ID
