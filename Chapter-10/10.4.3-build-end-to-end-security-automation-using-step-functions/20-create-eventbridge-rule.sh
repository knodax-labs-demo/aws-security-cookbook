aws events put-rule \
  --name $RULE_NAME \
  --event-pattern '{
    "source": ["aws.guardduty"],
    "detail-type": ["GuardDuty Finding"]
  }' \
  --region $REGION
