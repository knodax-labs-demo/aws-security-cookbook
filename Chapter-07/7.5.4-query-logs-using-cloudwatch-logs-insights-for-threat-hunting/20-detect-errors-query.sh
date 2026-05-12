QUERY_ID=$(aws logs start-query \
  --log-group-name $LOG_GROUP_NAME \
  --start-time $START_TIME \
  --end-time $END_TIME \
  --query-string '
    fields @timestamp, @message
    | filter @message like /(?i)(error|exception)/
    | sort @timestamp desc
    | limit 50
  ' \
  --region $REGION \
  --query 'queryId' \
  --output text)
