aws stepfunctions start-execution \
  --state-machine-arn "$STATE_MACHINE_ARN" \
  --input '{"detail":{"resource":{"instanceDetails":{"instanceId":"i-1234567890abcdef0"}}}}' \
  --region "$REGION"
