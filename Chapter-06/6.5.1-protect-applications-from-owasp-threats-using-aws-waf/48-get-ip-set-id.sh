IP_SET_ID=$(aws wafv2 list-ip-sets \
  --scope REGIONAL \
  --region $REGION \
  --query "IPSets[?Name=='blocked-ip-set'].Id" \
  --output text)
