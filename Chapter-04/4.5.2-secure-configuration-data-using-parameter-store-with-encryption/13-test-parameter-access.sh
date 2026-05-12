aws ssm get-parameter \
  --name $PARAM_NAME \
  --with-decryption \
  --profile test-ssm-user
