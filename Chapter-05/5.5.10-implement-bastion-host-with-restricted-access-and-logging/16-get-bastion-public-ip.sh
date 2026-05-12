BASTION_IP=$(aws ec2 describe-instances \
  --instance-ids $BASTION_INSTANCE_ID \
  --query 'Reservations[0].Instances[0].PublicIpAddress' \
  --output text)
