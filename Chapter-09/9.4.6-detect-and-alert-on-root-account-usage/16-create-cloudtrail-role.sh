aws iam create-role \
  --role-name $ROLE_NAME \
  --assume-role-policy-document file://cloudtrail-trust-policy.json
