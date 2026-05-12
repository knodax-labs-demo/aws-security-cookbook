aws organizations detach-policy \
  --policy-id "$SCP_S3_ID" \
  --target-id "$OU_ID"
