if [ "$ASSOCIATION_ID" = "None" ] || [ "$ASSOCIATION_ID" = "null" ]; then
  aws ec2 associate-iam-instance-profile \
    --instance-id "$INSTANCE_ID" \
    --iam-instance-profile Name="$INSTANCE_PROFILE_NAME" \
    --region "$REGION"
else
  aws ec2 replace-iam-instance-profile-association \
    --association-id "$ASSOCIATION_ID" \
    --iam-instance-profile Name="$INSTANCE_PROFILE_NAME" \
    --region "$REGION"
fi
