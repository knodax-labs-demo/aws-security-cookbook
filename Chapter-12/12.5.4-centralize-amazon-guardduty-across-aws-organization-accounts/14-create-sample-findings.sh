aws guardduty create-sample-findings \
  --detector-id "$DETECTOR_ID" \
  --finding-types "Recon:EC2/PortProbeUnprotectedPort" \
  --region "$REGION"
