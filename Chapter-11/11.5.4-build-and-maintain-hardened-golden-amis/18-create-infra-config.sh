export INFRA_ARN=$(aws imagebuilder create-infrastructure-configuration \
  --name "$INFRA_NAME" \
  --instance-profile-name "$INSTANCE_PROFILE_NAME" \
  --terminate-instance-on-failure \
  --region "$REGION" \
  --query 'infrastructureConfigurationArn' \
  --output text)
