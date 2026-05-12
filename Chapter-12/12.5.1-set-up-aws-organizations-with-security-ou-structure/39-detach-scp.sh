aws organizations detach-policy \
  --policy-id "$SCP_ID" \
  --target-id "$WORKLOADS_OU_ID"
