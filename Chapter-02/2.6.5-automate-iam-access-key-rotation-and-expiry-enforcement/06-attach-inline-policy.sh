aws iam put-role-policy \
  --role-name IAMKeyRotationRole \
  --policy-name KeyRotationPolicy \
  --policy-document file://key-rotation-policy.json
