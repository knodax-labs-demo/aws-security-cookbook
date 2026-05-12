aws ec2 describe-instances \
  --query "Reservations[*].Instances[*].[InstanceId,SecurityGroups[*].GroupId]" \
  --output table
