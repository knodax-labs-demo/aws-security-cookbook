aws ec2 run-instances \
  --image-id "$NEW_AMI_ID" \
  --instance-type t3.micro \
  --region "$REGION"
