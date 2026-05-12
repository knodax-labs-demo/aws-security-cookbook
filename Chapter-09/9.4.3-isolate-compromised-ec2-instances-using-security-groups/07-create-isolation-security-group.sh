ISOLATION_SG_ID=$(aws ec2 create-security-group \
  --group-name $ISOLATION_SG_NAME \
  --description "Isolation security group" \
  --vpc-id $VPC_ID \
  --region $REGION \
  --query 'GroupId' \
  --output text)
