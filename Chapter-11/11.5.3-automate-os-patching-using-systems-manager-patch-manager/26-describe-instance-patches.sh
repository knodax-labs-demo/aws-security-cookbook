aws ssm describe-instance-patches \
  --instance-id "$INSTANCE_ID" \
  --region "$REGION" \
  --query 'Patches[?State!=`Installed`]'
