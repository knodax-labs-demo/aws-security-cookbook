aws apigateway put-integration-response \
  --rest-api-id $API_ID \
  --resource-id $RESOURCE_ID \
  --http-method GET \
  --status-code 200 \
  --response-templates '{"application/json":"{\"message\":\"Secure API is working\"}"}' \
  --region $REGION
