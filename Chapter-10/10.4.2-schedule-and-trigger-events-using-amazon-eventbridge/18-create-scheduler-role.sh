aws iam create-role \
  --role-name $SCHEDULER_ROLE_NAME \
  --assume-role-policy-document file://scheduler-trust-policy.json
