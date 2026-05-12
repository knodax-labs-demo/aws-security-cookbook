aws events put-rule \
  --name $RULE_NAME \
  --event-pattern '{
    "source": ["custom.incident"],
    "detail-type": ["Incident Response Test"]
  }'
