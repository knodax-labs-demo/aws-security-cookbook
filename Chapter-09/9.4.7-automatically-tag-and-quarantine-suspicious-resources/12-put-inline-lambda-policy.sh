aws iam put-role-policy \
  --role-name $LAMBDA_ROLE_NAME \
  --policy-name QuarantineEC2Policy \
  --policy-document file://lambda-ec2-policy.json
