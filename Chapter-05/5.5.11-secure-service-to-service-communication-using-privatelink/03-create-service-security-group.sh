SERVICE_SG=$(aws ec2 create-security-group \
  --group-name service-sg \
  --description "Service security group" \
  --vpc-id $VPC_ID \
  --query 'GroupId' \
  --output text)
