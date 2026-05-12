aws ec2 create-network-acl-entry \
  --cli-input-json "{
    \"NetworkAclId\": \"$NACL_ID\",
    \"RuleNumber\": 90,
    \"Protocol\": \"-1\",
    \"RuleAction\": \"deny\",
    \"Egress\": false,
    \"CidrBlock\": \"203.0.113.0/24\"
  }" \
  --region $REGION
