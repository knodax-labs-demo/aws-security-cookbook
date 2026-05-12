aws ec2 create-network-acl-entry \
  --cli-input-json "{
    \"NetworkAclId\": \"$NACL_ID\",
    \"RuleNumber\": 100,
    \"Protocol\": \"-1\",
    \"RuleAction\": \"allow\",
    \"Egress\": true,
    \"CidrBlock\": \"0.0.0.0/0\"
  }" \
  --region $REGION
