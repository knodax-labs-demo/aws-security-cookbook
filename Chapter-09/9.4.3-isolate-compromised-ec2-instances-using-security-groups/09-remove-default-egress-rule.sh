aws ec2 revoke-security-group-egress \
  --group-id $ISOLATION_SG_ID \
  --ip-permissions '[{
    "IpProtocol":"-1",
    "IpRanges":[{"CidrIp":"0.0.0.0/0"}]
  }]' \
  --region $REGION
