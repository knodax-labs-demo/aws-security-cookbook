aws iam put-role-policy \
  --role-name $ROLE_NAME \
  --policy-name ReadSpecificSecretPolicy \
  --policy-document file://lambda-secret-access-policy.json
