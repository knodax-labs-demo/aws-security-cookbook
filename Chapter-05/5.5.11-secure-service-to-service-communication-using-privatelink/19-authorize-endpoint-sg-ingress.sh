aws ec2 authorize-security-group-ingress \
  --group-id $ENDPOINT_SG \
  --protocol tcp \
  --port 80 \
  --cidr $VPC_CIDR
