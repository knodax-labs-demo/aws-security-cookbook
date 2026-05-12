VPC_ENDPOINT_ID=$(aws ec2 create-vpc-endpoint \
  --vpc-id $VPC_ID \
  --service-name $SERVICE_NAME \
  --vpc-endpoint-type Interface \
  --subnet-ids $SUBNET_ID \
  --security-group-ids $ENDPOINT_SG \
  --query 'VpcEndpoint.VpcEndpointId' \
  --output text)
