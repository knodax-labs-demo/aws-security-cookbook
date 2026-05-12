AZ=$(aws ec2 describe-availability-zones \
  --region $REGION \
  --query 'AvailabilityZones[0].ZoneName' \
  --output text)
