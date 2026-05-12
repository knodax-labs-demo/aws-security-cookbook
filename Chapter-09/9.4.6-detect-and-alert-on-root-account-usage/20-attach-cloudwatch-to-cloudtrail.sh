export LOG_GROUP_ARN="arn:aws:logs:$REGION:$ACCOUNT_ID:log-group:$LOG_GROUP_NAME:*"

aws cloudtrail update-trail \
  --name $TRAIL_NAME \
  --cloud-watch-logs-log-group-arn "$LOG_GROUP_ARN" \
  --cloud-watch-logs-role-arn "$CLOUDTRAIL_ROLE_ARN" \
  --region $REGION
