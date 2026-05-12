aws logs describe-log-groups \
  --log-group-name-prefix /aws/lambda/ \
  --region $REGION \
  --query 'logGroups[*].logGroupName' \
  --output table
