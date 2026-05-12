aws ec2 revoke-security-group-egress \
  --group-id $QUARANTINE_SG \
  --protocol -1 \
  --cidr 0.0.0.0/0
