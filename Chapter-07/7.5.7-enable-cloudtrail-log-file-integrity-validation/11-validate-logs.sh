aws cloudtrail validate-logs \
  --trail-arn arn:aws:cloudtrail:$REGION:$ACCOUNT_ID:trail/$TRAIL_NAME \
  --start-time 2024-01-01T00:00:00Z \
  --end-time $(date -u +"%Y-%m-%dT%H:%M:%SZ")
