export TAG_POLICY_ID=$(aws organizations create-policy \
  --name "$TAG_POLICY_NAME" \
  --description "Standardize required governance and cost allocation tags" \
  --type TAG_POLICY \
  --content file://tag-policy.json \
  --query 'Policy.PolicySummary.Id' \
  --output text)
