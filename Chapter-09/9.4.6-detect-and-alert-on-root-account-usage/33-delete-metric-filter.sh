aws logs delete-metric-filter \
  --log-group-name $LOG_GROUP_NAME \
  --filter-name RootAccountUsageFilter \
  --region $REGION
