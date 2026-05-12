aws cloudtrail create-trail \
  --name "$TRAIL_NAME" \
  --s3-bucket-name "$LOG_BUCKET" \
  --is-multi-region-trail \
  --region "$REGION"
