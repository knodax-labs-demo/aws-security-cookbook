PRIVATE_IP=$(aws ec2 describe-instances \
  --instance-ids $PRIVATE_INSTANCE_ID \
  --query 'Reservations[0].Instances[0].PrivateIpAddress' \
  --output text)
