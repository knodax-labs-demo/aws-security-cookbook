aws organizations detach-policy \
  --policy-id "$SCP_ORG_ID" \
  --target-id "$OU_ID"
