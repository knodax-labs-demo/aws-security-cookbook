export ASSOCIATION_ID=$(aws ec2 describe-iam-instance-profile-associations \
  --filters Name=instance-id,Values="$INSTANCE_ID" \
  --region "$REGION" \
  --query 'IamInstanceProfileAssociations[0].AssociationId' \
  --output text)
