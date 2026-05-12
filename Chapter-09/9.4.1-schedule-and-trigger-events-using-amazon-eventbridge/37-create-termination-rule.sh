aws events put-rule \
  --name $EC2_TERMINATION_RULE_NAME \
  --event-pattern file://ec2-termination-event-pattern.json \
  --state ENABLED \
  --region $REGION
