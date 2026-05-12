QUERY_ID=$(aws athena start-query-execution \
  --query-string "
    SELECT userIdentity.arn, eventName, eventTime
    FROM $DATABASE_NAME.$TABLE_NAME
    WHERE userIdentity.arn LIKE '%user%'
    ORDER BY eventTime DESC
    LIMIT 50;
  " \
  --result-configuration OutputLocation=s3://$BUCKET_NAME/query-results/ \
  --region $REGION \
  --query 'QueryExecutionId' \
  --output text)
