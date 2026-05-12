export BUILD_ID=$(aws codebuild start-build \
  --project-name "$CODEBUILD_PROJECT_NAME" \
  --region "$REGION" \
  --query 'build.id' \
  --output text)
