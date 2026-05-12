export EC2_SG_ID=$(aws ec2 create-security-group \
  --group-name waf-demo-ec2-sg \
  --description "Security group for WAF demo EC2 instance" \
  --vpc-id $VPC_ID \
  --region $REGION \
  --query 'GroupId' \
  --output text)
