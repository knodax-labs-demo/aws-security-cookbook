aws events put-targets \
  --rule $EC2_TERMINATION_RULE_NAME \
  --targets "Id"="1","Arn"="$TOPIC_ARN" \
  --region $REGION
