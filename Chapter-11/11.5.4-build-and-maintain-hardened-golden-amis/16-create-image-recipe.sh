export RECIPE_ARN=$(aws imagebuilder create-image-recipe \
  --name "$RECIPE_NAME" \
  --version 1.0.0 \
  --components componentArn="$COMPONENT_ARN" \
  --parent-image "$BASE_AMI_ID" \
  --region "$REGION" \
  --query 'imageRecipeArn' \
  --output text)
