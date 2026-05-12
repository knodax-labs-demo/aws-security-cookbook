aws s3api list-object-versions \
  --bucket $BUCKET_NAME \
  --query 'DeleteMarkers[].{Key:Key,VersionId:VersionId}' \
  --output json > delete-markers.json
