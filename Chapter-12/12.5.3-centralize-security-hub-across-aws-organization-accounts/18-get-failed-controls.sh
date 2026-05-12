aws securityhub get-findings \
  --filters '{
    "ComplianceStatus": [
      {
        "Value": "FAILED",
        "Comparison": "EQUALS"
      }
    ]
  }' \
  --region "$REGION"
