aws events put-rule \
  --name $RULE_NAME \
  --event-pattern '{
    "source": ["custom.guardduty"],
    "detail-type": ["GuardDuty Finding"]
  }'
