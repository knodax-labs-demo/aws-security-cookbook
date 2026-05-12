aws guardduty list-members \
  --detector-id "$DETECTOR_ID" \
  --only-associated \
  --region "$REGION"
