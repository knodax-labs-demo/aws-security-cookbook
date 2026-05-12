aws ec2 describe-tags \
  --filters Name=resource-id,Values="$INSTANCE_ID" Name=key,Values="$INSTANCE_TAG_KEY" \
  --region "$REGION"
