export COMMAND_ID=$(aws ssm send-command \
  --document-name "AWS-RunPatchBaseline" \
  --targets Key=InstanceIds,Values="$INSTANCE_ID" \
  --parameters Operation=Install \
  --region "$REGION" \
  --query 'Command.CommandId' \
  --output text)
