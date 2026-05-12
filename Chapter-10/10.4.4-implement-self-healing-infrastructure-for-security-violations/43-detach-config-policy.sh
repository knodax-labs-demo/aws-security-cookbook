aws iam detach-role-policy \
  --role-name "$CONFIG_ROLE_NAME" \
  --policy-arn arn:aws:iam::aws:policy/service-role/AWS_ConfigRole
