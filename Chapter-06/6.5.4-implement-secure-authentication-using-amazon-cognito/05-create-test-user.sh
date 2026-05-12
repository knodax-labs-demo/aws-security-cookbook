aws cognito-idp admin-create-user \
  --user-pool-id $USER_POOL_ID \
  --username $TEST_USERNAME \
  --user-attributes Name=email,Value=$TEST_USERNAME Name=email_verified,Value=true \
  --message-action SUPPRESS \
  --region $REGION
