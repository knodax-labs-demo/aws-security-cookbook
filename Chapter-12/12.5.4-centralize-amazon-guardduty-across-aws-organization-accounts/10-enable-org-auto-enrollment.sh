aws guardduty update-organization-configuration \
  --detector-id "$DETECTOR_ID" \
  --auto-enable ORGANIZATION \
  --region "$REGION"
