export IP_SET_ARN=$(aws wafv2 list-ip-sets \
  --scope REGIONAL \
  --region $REGION \
  --query "IPSets[?Name=='blocked-ip-set'].ARN" \
  --output text)
