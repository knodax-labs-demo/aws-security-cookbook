export SCP_ORG_ID=$(aws organizations create-policy \
  --name DenyLeaveOrganization \
  --description "Prevent accounts from leaving the organization" \
  --type SERVICE_CONTROL_POLICY \
  --content file://deny-leave-org.json \
  --query 'Policy.PolicySummary.Id' \
  --output text)
