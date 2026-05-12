VERSION_ID=$(aws s3api put-object \
  --bucket $BUCKET_NAME \
  --key log.txt \
  --body log.txt \
  --query VersionId \
  --output text)
