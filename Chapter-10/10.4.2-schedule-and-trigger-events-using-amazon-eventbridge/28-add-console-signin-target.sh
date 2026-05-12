aws events put-targets \
  --rule $CONSOLE_SIGNIN_RULE_NAME \
  --targets "Id"="1","Arn"="$TOPIC_ARN" \
  --region $REGION
