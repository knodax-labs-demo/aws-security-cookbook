QUERY_ID=$(aws athena start-query-execution \
  --query-string "
    SELECT eventName, sourceIPAddress, eventTime
    FROM $DATABASE_NAME.$TABLE_NAME
    WHERE eventSource = 'ec2.amazonaws.com'
    ORDER BY eventTime DESC
    LIMIT 50;
  " \
  --result-configuration OutputLocation=s3://$BUCKET_NAME/query-results/ \
  --region $REGION \
  --query 'QueryExecutionId' \
  --output text)
