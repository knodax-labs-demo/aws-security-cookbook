aws iam put-role-policy \
  --role-name SecurityAutomationStepFunctionsRole \
  --policy-name SecurityAutomationStepFunctionsPolicy \
  --policy-document file://stepfunctions-permissions.json
