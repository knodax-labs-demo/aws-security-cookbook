aws iam put-role-policy \
  --role-name StaleCredentialRole \
  --policy-name StaleCredentialPolicy \
  --policy-document file://stale-credential-policy.json
