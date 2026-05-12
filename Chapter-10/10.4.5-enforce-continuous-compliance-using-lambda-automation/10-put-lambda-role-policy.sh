aws iam put-role-policy \
  --role-name "$LAMBDA_ROLE_NAME" \
  --policy-name ComplianceEnforcerS3Policy \
  --policy-document file://lambda-s3-policy.json
