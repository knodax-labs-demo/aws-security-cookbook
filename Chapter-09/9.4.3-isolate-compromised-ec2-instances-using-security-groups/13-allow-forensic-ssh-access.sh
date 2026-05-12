aws ec2 authorize-security-group-ingress \
  --group-id $ISOLATION_SG_ID \
  --protocol tcp \
  --port 22 \
  --cidr $MY_IP \
  --region $REGION
