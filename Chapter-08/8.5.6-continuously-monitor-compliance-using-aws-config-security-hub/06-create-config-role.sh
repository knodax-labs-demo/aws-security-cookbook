aws iam create-role \
  --role-name $CONFIG_ROLE_NAME \
  --assume-role-policy-document file://config-trust-policy.json
