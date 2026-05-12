aws logs put-metric-filter \
  --log-group-name $LOG_GROUP_NAME \
  --filter-name FailedLoginFilter \
  --filter-pattern '"Failed login"' \
  --metric-transformations \
    metricName=FailedLoginAttempts,metricNamespace=SecurityMetrics,metricValue=1 \
  --region $REGION
