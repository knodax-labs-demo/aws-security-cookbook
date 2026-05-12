aws ssm describe-instance-information \
  --region "$REGION" \
  --query "InstanceInformationList[?InstanceId=='$INSTANCE_ID']"
