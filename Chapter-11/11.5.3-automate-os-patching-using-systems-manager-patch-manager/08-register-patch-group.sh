aws ssm register-patch-baseline-for-patch-group \
  --baseline-id "$BASELINE_ID" \
  --patch-group "$INSTANCE_TAG_VALUE" \
  --region "$REGION"
