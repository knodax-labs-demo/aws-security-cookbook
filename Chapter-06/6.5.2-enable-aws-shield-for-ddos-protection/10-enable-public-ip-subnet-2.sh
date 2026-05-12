aws ec2 modify-subnet-attribute \
  --subnet-id $SUBNET_2_ID \
  --map-public-ip-on-launch \
  --region $REGION
