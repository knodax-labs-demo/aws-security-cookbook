aws kms schedule-key-deletion \
  --key-id "$PRIMARY_KEY_ID" \
  --pending-window-in-days 7 \
  --region "$PRIMARY_REGION"
