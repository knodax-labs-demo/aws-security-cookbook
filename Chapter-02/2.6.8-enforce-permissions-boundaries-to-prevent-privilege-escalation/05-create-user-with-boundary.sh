aws iam create-user \
  --user-name $USER_NAME \
  --permissions-boundary arn:aws:iam::$ACCOUNT_ID:policy/$BOUNDARY_POLICY_NAME
