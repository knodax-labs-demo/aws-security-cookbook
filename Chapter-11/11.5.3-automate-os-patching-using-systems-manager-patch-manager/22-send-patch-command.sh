export COMMAND_ID=$(aws ssm send-command \
  --document-name "AWS-RunPatchBaseline" \
  --targets Key=tag:$INSTANCE_TAG_KEY,Values=$INSTANCE_TAG_VALUE \
  --parameters Operation=Install \
  --region "$REGION" \
  --query 'Command.CommandId' \
  --output text)
