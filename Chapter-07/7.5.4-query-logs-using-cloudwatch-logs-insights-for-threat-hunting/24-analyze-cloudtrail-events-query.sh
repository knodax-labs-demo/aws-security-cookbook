QUERY_ID=$(aws logs start-query \
  --log-group-name $LOG_GROUP_NAME \
  --start-time $START_TIME \
  --end-time $END_TIME \
  --query-string '
    fields eventName, sourceIPAddress, userIdentity.type
    | filter eventSource = "ec2.amazonaws.com"
    | stats count(*) as apiCalls by eventName, sourceIPAddress
    | sort apiCalls desc
    | limit 50
  ' \
  --region $REGION \
  --query 'queryId' \
  --output text)
