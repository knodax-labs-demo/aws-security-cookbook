IP_SET_LOCK_TOKEN=$(aws wafv2 get-ip-set \
  --name blocked-ip-set \
  --scope REGIONAL \
  --id $IP_SET_ID \
  --region $REGION \
  --query 'LockToken' \
  --output text)
