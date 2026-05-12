SECRET_ARN=$(aws secretsmanager describe-secret \
  --secret-id $SECRET_NAME \
  --query ARN \
  --output text \
  --region $REGION)
