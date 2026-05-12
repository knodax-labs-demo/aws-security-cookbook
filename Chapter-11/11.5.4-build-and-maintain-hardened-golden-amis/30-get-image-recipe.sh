aws imagebuilder get-image-recipe \
  --image-recipe-arn "$RECIPE_ARN" \
  --region "$REGION" \
  --query 'imageRecipe.components'
