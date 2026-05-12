aws athena start-query-execution \
  --query-string "DROP TABLE $DATABASE_NAME.$TABLE_NAME;" \
  --result-configuration OutputLocation=s3://$BUCKET_NAME/query-results/
