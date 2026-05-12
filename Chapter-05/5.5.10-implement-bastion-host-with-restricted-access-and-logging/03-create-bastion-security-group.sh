BASTION_SG_ID=$(aws ec2 create-security-group \
  --group-name $BASTION_SG_NAME \
  --description "Bastion host security group" \
  --vpc-id $VPC_ID \
  --query 'GroupId' \
  --output text)
