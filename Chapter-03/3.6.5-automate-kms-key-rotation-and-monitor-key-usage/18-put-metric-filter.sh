aws logs put-metric-filter \
  --log-group-name /aws/kms/activity \
  --filter-name KMSUsageFilter \
  --filter-pattern "{ ($.eventSource = kms.amazonaws.com) }" \
  --metric-transformations \
    metricName=KMSUsageCount,metricNamespace=Security,metricValue=1
