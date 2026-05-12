aws events put-rule \
  --name $CONSOLE_SIGNIN_RULE_NAME \
  --event-pattern file://console-signin-event-pattern.json \
  --state ENABLED \
  --region $REGION
