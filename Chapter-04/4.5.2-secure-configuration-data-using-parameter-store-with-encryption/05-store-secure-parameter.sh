aws ssm put-parameter \
  --name $PARAM_NAME \
  --value "MySecurePassword123" \
  --type SecureString \
  --key-id $KMS_KEY_ID \
  --region $REGION
