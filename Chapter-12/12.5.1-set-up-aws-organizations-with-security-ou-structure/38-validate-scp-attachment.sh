aws organizations list-policies-for-target \
  --target-id "$WORKLOADS_OU_ID" \
  --filter SERVICE_CONTROL_POLICY \
  --output table
