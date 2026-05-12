aws ssm list-command-invocations \
  --command-id "$COMMAND_ID" \
  --details \
  --region "$REGION"
