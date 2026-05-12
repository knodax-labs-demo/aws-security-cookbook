BASTION_INSTANCE_ID=$(aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type t2.micro \
  --subnet-id $PUBLIC_SUBNET \
  --security-group-ids $BASTION_SG_ID \
  --associate-public-ip-address \
  --key-name bastion-key \
  --query 'Instances[0].InstanceId' \
  --output text)
