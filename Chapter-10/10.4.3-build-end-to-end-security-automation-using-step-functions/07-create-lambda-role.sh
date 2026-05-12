aws iam create-role \
  --role-name SecurityAutomationLambdaRole \
  --assume-role-policy-document file://lambda-trust-policy.json
