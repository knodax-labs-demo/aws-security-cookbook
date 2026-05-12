aws ec2 authorize-security-group-ingress \
  --group-id $PRIVATE_SG_ID \
  --protocol tcp \
  --port 22 \
  --source-group $BASTION_SG_ID
