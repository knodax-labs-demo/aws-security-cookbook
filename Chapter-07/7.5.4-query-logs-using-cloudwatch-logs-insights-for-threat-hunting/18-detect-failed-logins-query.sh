QUERY_ID=$(aws logs start-query \
  --log-group-name $LOG_GROUP_NAME \
  --start-time $START_TIME \
  --end-time $END_TIME \
  --query-string '
    fields @timestamp, @message
    | filter @message like /(?i)(failed|unauthorized)/
    | sort @timestamp desc
    | limit 50
  ' \
  --region $REGION \
  --query 'queryId' \
  --output text)
