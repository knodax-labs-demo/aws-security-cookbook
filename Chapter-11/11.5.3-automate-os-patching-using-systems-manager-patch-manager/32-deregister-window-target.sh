aws ssm deregister-target-from-maintenance-window \
  --window-id "$WINDOW_ID" \
  --window-target-id "$WINDOW_TARGET_ID" \
  --region "$REGION"
