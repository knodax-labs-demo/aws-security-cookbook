aws imagebuilder get-image \
  --image-build-version-arn "$IMAGE_BUILD_VERSION_ARN" \
  --region "$REGION" \
  --query 'image.state'
