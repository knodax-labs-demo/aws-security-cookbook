aws ec2 describe-instances \
  --instance-ids "$INSTANCE_ID" \
  --region "$REGION" \
  --query 'Reservations[0].Instances[0].[InstanceId,State.Name,PlatformDetails,ImageId]' \
  --output table
