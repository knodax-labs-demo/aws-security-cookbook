aws iam put-role-policy \
  --role-name "$CODEBUILD_ROLE_NAME" \
  --policy-name SecureCodeBuildLeastPrivilegePolicy \
  --policy-document file://codebuild-policy.json
