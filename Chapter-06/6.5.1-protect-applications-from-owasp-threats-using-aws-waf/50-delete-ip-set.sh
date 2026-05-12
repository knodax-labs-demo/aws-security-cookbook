aws wafv2 delete-ip-set \
  --name blocked-ip-set \
  --scope REGIONAL \
  --id $IP_SET_ID \
  --lock-token $IP_SET_LOCK_TOKEN \
  --region $REGION
