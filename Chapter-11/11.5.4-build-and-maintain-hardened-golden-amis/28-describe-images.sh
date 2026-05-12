aws ec2 describe-images \
  --image-ids "$NEW_AMI_ID" \
  --region "$REGION" \
  --query 'Images[0].[ImageId,Name,State,CreationDate]' \
  --output table
