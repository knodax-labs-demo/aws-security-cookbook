aws ec2 modify-instance-attribute \
  --instance-id $INSTANCE_ID \
  --groups $ORIGINAL_SG_IDS \
  --region $REGION
