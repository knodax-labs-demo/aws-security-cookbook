SG_ID=$(aws ec2 create-security-group \
  --group-name $SG_NAME \
  --description "Secure RDS access" \
  --vpc-id $VPC_ID \
  --query 'GroupId' \
  --output text)
