aws logs put-retention-policy \
  --log-group-name $LOG_GROUP_NAME \
  --retention-in-days 7 \
  --region $REGION
