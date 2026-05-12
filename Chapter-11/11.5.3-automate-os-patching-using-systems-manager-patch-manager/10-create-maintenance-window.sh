export WINDOW_ID=$(aws ssm create-maintenance-window \
  --name "$MAINTENANCE_WINDOW_NAME" \
  --schedule "cron(0 3 ? * SUN *)" \
  --duration 2 \
  --cutoff 1 \
  --allow-unassociated-targets \
  --region "$REGION" \
  --query 'WindowId' \
  --output text)
