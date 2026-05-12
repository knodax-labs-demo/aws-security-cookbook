aws iam attach-group-policy \
  --group-name SecurityAdmins \
  --policy-arn "$MFA_POLICY_ARN"
