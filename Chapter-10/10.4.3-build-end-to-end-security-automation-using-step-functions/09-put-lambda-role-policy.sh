aws iam put-role-policy \
  --role-name SecurityAutomationLambdaRole \
  --policy-name SecurityAutomationLambdaPolicy \
  --policy-document file://lambda-permissions.json
