aws cloudtrail create-trail \
  --name $TRAIL_NAME \
  --s3-bucket-name $BUCKET_NAME \
  --is-multi-region-trail \
  --region $REGION
