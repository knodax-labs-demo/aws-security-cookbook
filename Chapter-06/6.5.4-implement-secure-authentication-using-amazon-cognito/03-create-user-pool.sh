USER_POOL_ID=$(aws cognito-idp create-user-pool \
  --pool-name $USER_POOL_NAME \
  --policies '{
    "PasswordPolicy": {
      "MinimumLength": 12,
      "RequireUppercase": true,
      "RequireLowercase": true,
      "RequireNumbers": true,
      "RequireSymbols": true
    }
  }' \
  --auto-verified-attributes email \
  --mfa-configuration OFF \
  --region $REGION \
  --query 'UserPool.Id' \
  --output text)
