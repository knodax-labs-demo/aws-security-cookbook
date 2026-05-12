aws organizations attach-policy \
  --policy-id "$SCP_CLOUDTRAIL_ID" \
  --target-id "$OU_ID"
