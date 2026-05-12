aws inspector2 list-findings \
  --filter-criteria '{
    "severity": [
      {
        "comparison": "EQUALS",
        "value": "CRITICAL"
      }
    ]
  }' \
  --region "$REGION"
