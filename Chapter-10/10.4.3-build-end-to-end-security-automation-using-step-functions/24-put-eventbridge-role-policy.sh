aws iam put-role-policy \
  --role-name EventBridgeStepFunctionsRole \
  --policy-name EventBridgeStepFunctionsPolicy \
  --policy-document file://eventbridge-permissions.json
