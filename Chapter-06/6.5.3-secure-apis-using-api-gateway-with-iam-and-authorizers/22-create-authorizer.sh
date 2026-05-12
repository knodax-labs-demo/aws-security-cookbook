AUTHORIZER_ID=$(aws apigateway create-authorizer \
  --rest-api-id $API_ID \
  --name CustomTokenAuthorizer2 \
  --type TOKEN \
  --authorizer-uri arn:aws:apigateway:$REGION:lambda:path/2015-03-31/functions/$LAMBDA_ARN/invocations \
  --identity-source method.request.header.AuthToken \
  --region $REGION \
  --query 'id' \
  --output text)
