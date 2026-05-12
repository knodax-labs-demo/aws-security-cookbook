aws ec2 create-network-acl-entry \
  --cli-input-json "{
    \"NetworkAclId\": \"$NACL_ID\",
    \"RuleNumber\": 120,
    \"Protocol\": \"tcp\",
    \"RuleAction\": \"allow\",
    \"Egress\": false,
    \"CidrBlock\": \"0.0.0.0/0\",
    \"PortRange\": {
      \"From\": 1024,
      \"To\": 65535
    }
  }" \
  --region $REGION
