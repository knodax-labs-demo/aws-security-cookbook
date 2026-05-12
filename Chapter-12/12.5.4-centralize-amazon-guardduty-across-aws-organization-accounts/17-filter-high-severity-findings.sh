aws guardduty list-findings \
  --detector-id "$DETECTOR_ID" \
  --finding-criteria '{
    "Criterion": {
      "severity": {
        "Gte": 7
      }
    }
  }' \
  --region "$REGION"
