export WINDOW_TARGET_ID=$(aws ssm register-target-with-maintenance-window \
  --window-id "$WINDOW_ID" \
  --targets Key=tag:$INSTANCE_TAG_KEY,Values=$INSTANCE_TAG_VALUE \
  --resource-type INSTANCE \
  --region "$REGION" \
  --query 'WindowTargetId' \
  --output text)
