aws logs describe-metric-filters \
  --log-group-name "$LOG_GROUP_NAME" \
  --filter-name-prefix RootAccountUsageFilter \
  --region "$REGION" \
  --query 'metricFilters[*].[filterName,filterPattern]' \
  --output table
