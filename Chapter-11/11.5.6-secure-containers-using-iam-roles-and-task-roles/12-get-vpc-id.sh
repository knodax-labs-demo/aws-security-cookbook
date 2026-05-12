export VPC_ID=$(aws ec2 describe-subnets \
  --subnet-ids "$SUBNET_ID" \
  --region "$REGION" \
  --query 'Subnets[0].VpcId' \
  --output text)
