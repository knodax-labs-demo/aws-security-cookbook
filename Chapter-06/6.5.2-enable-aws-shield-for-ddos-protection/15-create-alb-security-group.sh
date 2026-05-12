export ALB_SG_ID=$(aws ec2 create-security-group \
  --group-name shield-demo-alb-sg \
  --description "ALB security group" \
  --vpc-id $VPC_ID \
  --region $REGION \
  --query 'GroupId' \
  --output text)
