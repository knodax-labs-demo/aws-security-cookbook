PRIVATE_INSTANCE_ID=$(aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type t2.micro \
  --subnet-id $PRIVATE_SUBNET \
  --security-group-ids $PRIVATE_SG_ID \
  --key-name bastion-key \
  --query 'Instances[0].InstanceId' \
  --output text)
