aws athena start-query-execution \
  --query-string "DROP DATABASE $DATABASE_NAME;" \
  --result-configuration OutputLocation=s3://$BUCKET_NAME/query-results/
