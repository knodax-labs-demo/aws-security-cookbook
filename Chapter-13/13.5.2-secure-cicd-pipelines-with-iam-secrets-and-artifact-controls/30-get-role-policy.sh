aws iam get-role-policy \
  --role-name "$CODEBUILD_ROLE_NAME" \
  --policy-name SecureCodeBuildLeastPrivilegePolicy
