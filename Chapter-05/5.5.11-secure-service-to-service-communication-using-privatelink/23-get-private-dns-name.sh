export PRIVATE_DNS_NAME=$(aws ec2 describe-vpc-endpoints \
  --vpc-endpoint-ids $VPC_ENDPOINT_ID \
  --query 'VpcEndpoints[0].DnsEntries[0].DnsName' \
  --output text)
