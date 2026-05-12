aws iam delete-role-policy \
  --role-name "$REMEDIATION_ROLE_NAME" \
  --policy-name SelfHealingS3Policy
