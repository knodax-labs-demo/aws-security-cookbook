aws ec2 create-tags \
  --resources $QUARANTINE_SG \
  --tags Key=Purpose,Value=Quarantine \
  --region $REGION
