aws iam create-role \
  --role-name DemoSTSRole \
  --assume-role-policy-document file://trust-policy.json \
  --max-session-duration 3600
