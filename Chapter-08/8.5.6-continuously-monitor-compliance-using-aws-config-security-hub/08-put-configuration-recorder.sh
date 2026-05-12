aws configservice put-configuration-recorder \
  --configuration-recorder name=default,roleARN=arn:aws:iam::$ACCOUNT_ID:role/$CONFIG_ROLE_NAME
