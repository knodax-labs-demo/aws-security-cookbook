export IP_POLICY_ARN=$(aws iam create-policy \
  --policy-name ZeroTrustTrustedIPForSensitiveActions \
  --policy-document file://ip-restriction-sensitive-actions.json \
  --query 'Policy.Arn' \
  --output text)
