PRIVATE_SG_ID=$(aws ec2 create-security-group \
  --group-name $PRIVATE_SG_NAME \
  --description "Private instance security group" \
  --vpc-id $VPC_ID \
  --query 'GroupId' \
  --output text)
