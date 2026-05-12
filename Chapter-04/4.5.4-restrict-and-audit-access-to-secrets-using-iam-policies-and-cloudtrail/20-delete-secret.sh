aws secretsmanager delete-secret \
  --secret-id $SECRET_NAME \
  --recovery-window-in-days 7 \
  --region $REGION
