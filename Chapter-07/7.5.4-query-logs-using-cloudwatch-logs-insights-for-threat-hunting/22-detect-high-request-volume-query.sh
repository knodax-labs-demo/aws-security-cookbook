QUERY_ID=$(aws logs start-query \
  --log-group-name $LOG_GROUP_NAME \
  --start-time $START_TIME \
  --end-time $END_TIME \
  --query-string '
    fields @timestamp
    | stats count(*) as requestCount by bin(1m)
    | filter requestCount > 5
    | sort requestCount desc
  ' \
  --region $REGION \
  --query 'queryId' \
  --output text)
