aws logs create-log-group \
  --log-group-name /ecs/security \
  --region "$REGION" 2>/dev/null || true
