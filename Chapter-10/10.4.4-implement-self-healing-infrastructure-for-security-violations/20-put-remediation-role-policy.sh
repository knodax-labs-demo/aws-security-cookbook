aws iam put-role-policy \
  --role-name "$REMEDIATION_ROLE_NAME" \
  --policy-name SelfHealingS3Policy \
  --policy-document file://remediation-policy.json
