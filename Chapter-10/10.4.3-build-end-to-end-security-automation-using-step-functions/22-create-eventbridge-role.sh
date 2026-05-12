aws iam create-role \
  --role-name EventBridgeStepFunctionsRole \
  --assume-role-policy-document file://eventbridge-trust-policy.json
