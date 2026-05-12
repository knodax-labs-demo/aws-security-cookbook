QUERY_ID=$(aws athena start-query-execution \
  --query-string "
    SELECT awsRegion, COUNT(*) as activity_count
    FROM $DATABASE_NAME.$TABLE_NAME
    GROUP BY awsRegion
    ORDER BY activity_count DESC;
  " \
  --result-configuration OutputLocation=s3://$BUCKET_NAME/query-results/ \
  --region $REGION \
  --query 'QueryExecutionId' \
  --output text)
