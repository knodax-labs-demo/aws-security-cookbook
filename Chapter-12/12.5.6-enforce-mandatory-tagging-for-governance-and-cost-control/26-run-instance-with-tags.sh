aws ec2 run-instances \
  --image-id ami-xxxxxxxxxxxxxxxxx \
  --instance-type t3.micro \
  --tag-specifications 'ResourceType=instance,Tags=[
    {Key=Environment,Value=Dev},
    {Key=Owner,Value=Admin},
    {Key=CostCenter,Value=IT}
  ]' \
  --region "$REGION"
