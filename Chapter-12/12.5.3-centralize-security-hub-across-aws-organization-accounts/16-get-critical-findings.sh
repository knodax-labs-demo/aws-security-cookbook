aws securityhub get-findings \
  --filters '{
    "SeverityLabel": [
      {
        "Value": "CRITICAL",
        "Comparison": "EQUALS"
      }
    ]
  }' \
  --region "$REGION"
