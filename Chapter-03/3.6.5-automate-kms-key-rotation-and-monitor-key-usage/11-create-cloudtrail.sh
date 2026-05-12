aws cloudtrail create-trail \
  --name KMSAuditTrail \
  --s3-bucket-name $TRAIL_BUCKET
