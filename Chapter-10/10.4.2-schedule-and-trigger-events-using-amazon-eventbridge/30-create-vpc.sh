VPC_ID=$(aws ec2 create-vpc \
  --cidr-block 10.20.0.0/16 \
  --region $REGION \
  --query 'Vpc.VpcId' \
  --output text)

aws ec2 create-tags \
  --resources $VPC_ID \
  --tags Key=Name,Value=$VPC_NAME \
  --region $REGION
