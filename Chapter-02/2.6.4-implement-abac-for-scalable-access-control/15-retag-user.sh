aws iam tag-user \
  --user-name ABACDemoUser \
  --tags Key=Project,Value=OtherProject Key=Environment,Value=$ENV_TAG
