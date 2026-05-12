aws athena start-query-execution \
  --query-string "
  CREATE EXTERNAL TABLE IF NOT EXISTS $DATABASE_NAME.$TABLE_NAME (
    eventVersion STRING,
    userIdentity STRUCT<
      type:STRING,
      principalId:STRING,
      arn:STRING,
      accountId:STRING
    >,
    eventTime STRING,
    eventSource STRING,
    eventName STRING,
    awsRegion STRING,
    sourceIPAddress STRING
  )
  ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
  LOCATION 's3://$BUCKET_NAME/AWSLogs/'
  " \
  --result-configuration OutputLocation=s3://$BUCKET_NAME/query-results/
