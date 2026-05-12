aws ec2 describe-security-groups \
  --query "SecurityGroups[*].[GroupId,IpPermissions]"
