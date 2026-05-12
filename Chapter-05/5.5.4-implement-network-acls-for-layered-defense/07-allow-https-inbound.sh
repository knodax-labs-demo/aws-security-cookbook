aws ec2 create-network-acl-entry \
  --cli-input-json "{
    \"NetworkAclId\": \"$NACL_ID\",
    \"RuleNumber\": 110,
    \"Protocol\": \"tcp\",
    \"RuleAction\": \"allow\",
    \"Egress\": false,
    \"CidrBlock\": \"0.0.0.0/0\",
    \"PortRange\": {
      \"From\": 443,
      \"To\": 443
    }
  }" \
  --region $REGION
