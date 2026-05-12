aws iam put-role-policy \
  --role-name $SCHEDULER_ROLE_NAME \
  --policy-name InvokeLambdaPolicy \
  --policy-document file://scheduler-lambda-policy.json
