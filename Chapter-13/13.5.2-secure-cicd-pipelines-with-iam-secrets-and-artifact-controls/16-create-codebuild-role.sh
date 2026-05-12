aws iam create-role \
  --role-name "$CODEBUILD_ROLE_NAME" \
  --assume-role-policy-document file://codebuild-trust-policy.json
