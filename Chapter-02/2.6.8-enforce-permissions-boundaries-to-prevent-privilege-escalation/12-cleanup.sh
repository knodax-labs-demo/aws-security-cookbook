aws iam detach-user-policy \
  --user-name $USER_NAME \
  --policy-arn arn:aws:iam::aws:policy/AdministratorAccess

aws iam delete-user \
  --user-name $USER_NAME

aws iam delete-policy \
  --policy-arn arn:aws:iam::$ACCOUNT_ID:policy/$BOUNDARY_POLICY_NAME

rm -f boundary-policy.json env.sh
