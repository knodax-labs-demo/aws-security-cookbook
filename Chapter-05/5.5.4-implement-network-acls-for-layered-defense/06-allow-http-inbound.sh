aws ec2 create-network-acl-entry \
  --cli-input-json "{
    \"NetworkAclId\": \"$NACL_ID\",
    \"RuleNumber\": 100,
    \"Protocol\": \"tcp\",
    \"RuleAction\": \"allow\",
    \"Egress\": false,
    \"CidrBlock\": \"0.0.0.0/0\",
    \"PortRange\": {
      \"From\": 80,
      \"To\": 80
    }
  }" \
  --region $REGION
