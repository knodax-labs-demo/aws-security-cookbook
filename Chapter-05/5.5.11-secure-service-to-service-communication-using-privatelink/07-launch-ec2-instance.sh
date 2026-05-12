INSTANCE_ID=$(aws ec2 run-instances \
  --image-id $AMI_ID \
  --instance-type t2.micro \
  --subnet-id $SUBNET_ID \
  --security-group-ids $SERVICE_SG \
  --user-data file://user-data.sh \
  --query 'Instances[0].InstanceId' \
  --output text)
