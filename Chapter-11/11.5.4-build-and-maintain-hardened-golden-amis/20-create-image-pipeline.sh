export PIPELINE_ARN=$(aws imagebuilder create-image-pipeline \
  --name "$PIPELINE_NAME" \
  --image-recipe-arn "$RECIPE_ARN" \
  --infrastructure-configuration-arn "$INFRA_ARN" \
  --region "$REGION" \
  --query 'imagePipelineArn' \
  --output text)
