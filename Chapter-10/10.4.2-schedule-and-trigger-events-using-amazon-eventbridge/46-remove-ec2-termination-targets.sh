aws events remove-targets \
  --rule $EC2_TERMINATION_RULE_NAME \
  --ids "1" \
  --region $REGION
