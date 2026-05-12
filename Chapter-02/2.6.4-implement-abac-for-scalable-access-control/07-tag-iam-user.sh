aws iam tag-user \
  --user-name ABACDemoUser \
  --tags Key=Project,Value=$PROJECT_TAG Key=Environment,Value=$ENV_TAG
