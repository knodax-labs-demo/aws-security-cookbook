QUERY_ID=$(aws logs start-query \
  --log-group-name $LOG_GROUP_NAME \
  --start-time $START_TIME \
  --end-time $END_TIME \
  --query-string '
    fields eventName, userIdentity.arn
    | stats count(*) as apiCallCount by eventName, userIdentity.arn
    | sort apiCallCount desc
    | limit 50
  ' \
  --region $REGION \
  --query 'queryId' \
  --output text)
