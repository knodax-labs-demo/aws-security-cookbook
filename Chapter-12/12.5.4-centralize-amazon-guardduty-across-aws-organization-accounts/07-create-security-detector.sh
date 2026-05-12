export DETECTOR_ID=$(aws guardduty create-detector \
  --enable \
  --query 'DetectorId' \
  --output text \
  --region "$REGION")
