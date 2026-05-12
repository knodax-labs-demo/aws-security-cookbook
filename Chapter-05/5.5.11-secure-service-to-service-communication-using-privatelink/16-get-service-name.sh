SERVICE_NAME=$(aws ec2 describe-vpc-endpoint-service-configurations \
  --service-ids $SERVICE_ID \
  --query 'ServiceConfigurations[0].ServiceName' \
  --output text)
