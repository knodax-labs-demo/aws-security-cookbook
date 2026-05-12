aws athena start-query-execution \
  --query-string "CREATE DATABASE IF NOT EXISTS $DATABASE_NAME;" \
  --result-configuration OutputLocation=s3://$BUCKET_NAME/query-results/
