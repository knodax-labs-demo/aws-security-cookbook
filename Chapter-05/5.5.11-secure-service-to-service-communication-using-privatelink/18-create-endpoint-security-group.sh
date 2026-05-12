ENDPOINT_SG=$(aws ec2 create-security-group \
  --group-name endpoint-sg \
  --description "Endpoint SG" \
  --vpc-id $VPC_ID \
  --query 'GroupId' \
  --output text)
