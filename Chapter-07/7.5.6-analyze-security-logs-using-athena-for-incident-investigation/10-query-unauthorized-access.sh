QUERY_ID=$(aws athena start-query-execution \
  --query-string "
    SELECT eventName, userIdentity.arn, sourceIPAddress
    FROM $DATABASE_NAME.$TABLE_NAME
    WHERE eventName LIKE '%Unauthorized%'
    LIMIT 50;
  " \
  --result-configuration OutputLocation=s3://$BUCKET_NAME/query-results/ \
  --region $REGION \
  --query 'QueryExecutionId' \
  --output text)
