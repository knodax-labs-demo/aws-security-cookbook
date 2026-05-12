aws s3api list-object-versions \
  --bucket $BUCKET_NAME \
  --query 'Versions[].{Key:Key,VersionId:VersionId}' \
  --output json > versions.json
