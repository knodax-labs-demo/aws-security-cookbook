aws cloudwatch describe-alarms \
  --alarm-names $ALARM_NAME \
  --region $REGION \
  --query 'MetricAlarms[0].[AlarmName,StateValue,StateReason]' \
  --output table
