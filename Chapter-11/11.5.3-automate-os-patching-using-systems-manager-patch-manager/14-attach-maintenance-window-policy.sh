aws iam attach-role-policy \
  --role-name "$SERVICE_ROLE_NAME" \
  --policy-arn arn:aws:iam::aws:policy/service-role/AmazonSSMMaintenanceWindowRole
