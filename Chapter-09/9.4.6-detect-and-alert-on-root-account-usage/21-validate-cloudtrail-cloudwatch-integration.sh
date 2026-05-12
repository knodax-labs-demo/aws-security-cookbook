aws cloudtrail describe-trails \
  --trail-name-list $TRAIL_NAME \
  --region $REGION \
  --query 'trailList[0].[Name,CloudWatchLogsLogGroupArn,CloudWatchLogsRoleArn]' \
  --output table
