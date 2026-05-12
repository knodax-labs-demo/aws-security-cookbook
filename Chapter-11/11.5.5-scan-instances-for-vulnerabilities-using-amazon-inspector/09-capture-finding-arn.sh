export FINDING_ARN=$(aws inspector2 list-findings \
  --region "$REGION" \
  --query 'findings[0].findingArn' \
  --output text)
