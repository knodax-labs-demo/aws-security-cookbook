aws events put-rule \
  --name $RULE_NAME \
  --event-pattern '{
    "source": ["aws.ec2"],
    "detail-type": ["AWS API Call via CloudTrail"]
  }'
