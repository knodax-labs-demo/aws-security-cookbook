aws iam create-role \
  --role-name SecurityAutomationStepFunctionsRole \
  --assume-role-policy-document file://stepfunctions-trust-policy.json
