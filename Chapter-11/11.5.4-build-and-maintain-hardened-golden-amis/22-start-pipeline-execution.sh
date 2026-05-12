export IMAGE_BUILD_VERSION_ARN=$(aws imagebuilder start-image-pipeline-execution \
  --image-pipeline-arn "$PIPELINE_ARN" \
  --region "$REGION" \
  --query 'imageBuildVersionArn' \
  --output text)
