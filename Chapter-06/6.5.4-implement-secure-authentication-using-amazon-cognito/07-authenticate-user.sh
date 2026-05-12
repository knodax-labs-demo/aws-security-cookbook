aws cognito-idp initiate-auth \
  --auth-flow USER_PASSWORD_AUTH \
  --client-id $APP_CLIENT_ID \
  --auth-parameters USERNAME=$TEST_USERNAME,PASSWORD="$TEST_PASSWORD" \
  --region $REGION
