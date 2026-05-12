export SCP_ID=$(aws organizations create-policy \
  --name "$SCP_NAME" \
  --description "Deny EC2 launches that do not include required governance tags" \
  --type SERVICE_CONTROL_POLICY \
  --content file://deny-untagged-ec2.json \
  --query 'Policy.PolicySummary.Id' \
  --output text)
