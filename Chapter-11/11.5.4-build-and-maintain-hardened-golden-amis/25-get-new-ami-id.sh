export NEW_AMI_ID=$(aws imagebuilder get-image \
  --image-build-version-arn "$IMAGE_BUILD_VERSION_ARN" \
  --region "$REGION" \
  --query 'image.outputResources.amis[0].image' \
  --output text)
