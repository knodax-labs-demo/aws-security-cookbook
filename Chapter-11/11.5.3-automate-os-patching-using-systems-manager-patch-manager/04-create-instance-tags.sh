aws ec2 create-tags \
  --resources "$INSTANCE_ID" \
  --tags Key="$INSTANCE_TAG_KEY",Value="$INSTANCE_TAG_VALUE" \
  --region "$REGION"
