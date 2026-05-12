aws events put-targets \
  --rule $RULE_NAME \
  --targets "Id"="1","Arn"=$(aws lambda get-function \
    --function-name $FUNCTION_NAME \
    --query 'Configuration.FunctionArn' \
    --output text)
