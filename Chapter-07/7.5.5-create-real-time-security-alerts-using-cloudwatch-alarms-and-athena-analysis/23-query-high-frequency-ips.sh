QUERY_ID=$(aws athena start-query-execution \
  --query-string "
    SELECT sourceIPAddress, COUNT(*) as attempts
    FROM $DATABASE_NAME.$TABLE_NAME
    GROUP BY sourceIPAddress
    ORDER BY attempts DESC
    LIMIT 50;
  " \
  --result-configuration OutputLocation=s3://$BUCKET_NAME/query-results/ \
  --region $REGION \
  --query 'QueryExecutionId' \
  --output text)
