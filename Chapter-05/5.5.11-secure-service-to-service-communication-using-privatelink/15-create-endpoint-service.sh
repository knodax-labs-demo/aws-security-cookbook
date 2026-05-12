SERVICE_ID=$(aws ec2 create-vpc-endpoint-service-configuration \
  --network-load-balancer-arns $NLB_ARN \
  --query 'ServiceConfiguration.ServiceId' \
  --output text)
