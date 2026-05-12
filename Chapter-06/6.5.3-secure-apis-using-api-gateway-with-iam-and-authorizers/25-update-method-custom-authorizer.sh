aws apigateway update-method \
  --rest-api-id $API_ID \
  --resource-id $RESOURCE_ID \
  --http-method GET \
  --patch-operations \
    op=replace,path=/authorizationType,value=CUSTOM \
    op=replace,path=/authorizerId,value=$AUTHORIZER_ID \
  --region $REGION
