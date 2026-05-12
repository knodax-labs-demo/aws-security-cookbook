export COMPONENT_ARN=$(aws imagebuilder create-component \
  --name "$COMPONENT_NAME" \
  --platform Linux \
  --version 1.0.0 \
  --data file://hardening-component.yml \
  --region "$REGION" \
  --query 'componentBuildVersionArn' \
  --output text)
