export CONFIG_BUCKET=config-logs-$(aws sts get-caller-identity \
  --query Account \
  --output text)
