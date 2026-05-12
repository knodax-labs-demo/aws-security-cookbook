if [ "$ASSOCIATION_ID" != "None" ] && [ "$ASSOCIATION_ID" != "null" ]; then
  aws ec2 disassociate-iam-instance-profile \
    --association-id "$ASSOCIATION_ID" \
    --region "$REGION"
fi
