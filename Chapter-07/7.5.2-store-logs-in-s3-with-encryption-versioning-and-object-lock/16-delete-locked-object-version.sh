aws s3api delete-object \
  --bucket $BUCKET_NAME \
  --key log.txt \
  --version-id $VERSION_ID
