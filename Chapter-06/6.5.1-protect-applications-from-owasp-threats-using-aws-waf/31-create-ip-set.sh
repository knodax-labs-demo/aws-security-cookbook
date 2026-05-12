aws wafv2 create-ip-set \
  --name blocked-ip-set \
  --scope REGIONAL \
  --ip-address-version IPV4 \
  --addresses 203.0.113.10/32 \
  --region $REGION
