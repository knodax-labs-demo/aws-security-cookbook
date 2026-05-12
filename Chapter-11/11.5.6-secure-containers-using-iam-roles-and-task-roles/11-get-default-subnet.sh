export SUBNET_ID=$(aws ec2 describe-subnets \
  --filters Name=default-for-az,Values=true \
  --region "$REGION" \
  --query 'Subnets[0].SubnetId' \
  --output text)
