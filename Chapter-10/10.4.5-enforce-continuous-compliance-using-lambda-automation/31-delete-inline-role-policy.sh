aws iam delete-role-policy \
  --role-name "$LAMBDA_ROLE_NAME" \
  --policy-name ComplianceEnforcerS3Policy
