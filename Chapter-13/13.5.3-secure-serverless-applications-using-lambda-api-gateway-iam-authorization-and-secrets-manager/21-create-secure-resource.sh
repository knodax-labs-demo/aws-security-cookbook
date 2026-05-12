export RESOURCE_ID=$(aws apigateway create-resource \
  --rest-api-id "$API_ID" \
  --parent-id "$ROOT_RESOURCE_ID" \
  --path-part secure \
  --region "$REGION" \
  --query 'id' \
  --output text)
