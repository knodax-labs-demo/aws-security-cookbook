export MFA_POLICY_ARN=$(aws iam create-policy \
  --policy-name "$POLICY_NAME" \
  --policy-document file://enforce-mfa-sensitive-actions.json \
  --query 'Policy.Arn' \
  --output text)
