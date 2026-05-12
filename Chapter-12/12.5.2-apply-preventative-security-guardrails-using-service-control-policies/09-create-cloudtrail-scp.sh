export SCP_CLOUDTRAIL_ID=$(aws organizations create-policy \
  --name DenyCloudTrailTampering \
  --description "Prevent disabling or deleting CloudTrail" \
  --type SERVICE_CONTROL_POLICY \
  --content file://deny-cloudtrail-tampering.json \
  --query 'Policy.PolicySummary.Id' \
  --output text)
