aws cognito-idp admin-set-user-password \
  --user-pool-id $USER_POOL_ID \
  --username $TEST_USERNAME \
  --password "$TEST_PASSWORD" \
  --permanent \
  --region $REGION
