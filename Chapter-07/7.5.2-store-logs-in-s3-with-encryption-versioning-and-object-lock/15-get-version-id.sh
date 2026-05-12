VERSION_ID=$(aws s3api list-object-versions \
  --bucket $BUCKET_NAME \
  --query "Versions[?Key=='log.txt'].VersionId | [0]" \
  --output text)
