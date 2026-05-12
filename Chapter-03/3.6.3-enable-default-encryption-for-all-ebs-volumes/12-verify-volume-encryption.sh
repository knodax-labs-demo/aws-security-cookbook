aws ec2 describe-volumes \
  --query "Volumes[*].[VolumeId,Encrypted,KmsKeyId]" \
  --region $REGION \
  --output table
