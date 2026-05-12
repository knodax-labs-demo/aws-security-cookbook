export ALB_SG_ID=$(aws ec2 create-security-group \
  --group-name waf-demo-alb-sg \
  --description "Security group for WAF demo ALB" \
  --vpc-id $VPC_ID \
  --region $REGION \
  --query 'GroupId' \
  --output text)
