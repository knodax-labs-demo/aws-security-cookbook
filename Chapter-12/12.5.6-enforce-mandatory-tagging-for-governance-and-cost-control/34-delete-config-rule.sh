aws configservice delete-config-rule \
  --config-rule-name required-tags \
  --region "$REGION" 2>/dev/null || true
