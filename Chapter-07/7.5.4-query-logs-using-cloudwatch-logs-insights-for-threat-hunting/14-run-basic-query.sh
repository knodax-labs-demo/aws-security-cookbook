QUERY_ID=$(aws logs start-query \
  --log-group-name $LOG_GROUP_NAME \
  --start-time $START_TIME \
  --end-time $END_TIME \
  --query-string '
    fields @timestamp, @message
    | sort @timestamp desc
    | limit 20
  ' \
  --region $REGION \
  --query 'queryId' \
  --output text)
