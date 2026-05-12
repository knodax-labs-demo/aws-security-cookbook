aws iam delete-role-policy \
  --role-name "$CODEBUILD_ROLE_NAME" \
  --policy-name SecureCodeBuildLeastPrivilegePolicy
