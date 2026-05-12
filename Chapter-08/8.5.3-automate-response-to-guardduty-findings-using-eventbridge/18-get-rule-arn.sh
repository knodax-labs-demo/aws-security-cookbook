RULE_ARN=$(aws events describe-rule \
  --name $RULE_NAME \
  --query 'Arn' \
  --output text)
