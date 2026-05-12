aws logs describe-log-groups \
  --region $REGION \
  --query 'logGroups[*].logGroupName' \
  --output table
