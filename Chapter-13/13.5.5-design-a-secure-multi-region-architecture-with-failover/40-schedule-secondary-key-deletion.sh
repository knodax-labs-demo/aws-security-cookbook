aws kms schedule-key-deletion \
  --key-id "$SECONDARY_KEY_ID" \
  --pending-window-in-days 7 \
  --region "$SECONDARY_REGION"
