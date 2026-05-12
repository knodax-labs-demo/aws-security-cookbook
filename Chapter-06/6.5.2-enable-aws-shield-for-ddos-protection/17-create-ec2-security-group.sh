export EC2_SG_ID=$(aws ec2 create-security-group \
  --group-name shield-demo-ec2-sg \
  --description "EC2 security group" \
  --vpc-id $VPC_ID \
  --region $REGION \
  --query 'GroupId' \
  --output text)
