aws configservice put-configuration-recorder \
  --configuration-recorder "name=default,roleARN=$CONFIG_ROLE_ARN" \
  --region "$REGION"
