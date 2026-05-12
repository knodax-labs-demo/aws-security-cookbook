aws logs describe-metric-filters \
  --log-group-name $LOG_GROUP_NAME \
  --region $REGION \
  --query 'metricFilters[*].filterName'
