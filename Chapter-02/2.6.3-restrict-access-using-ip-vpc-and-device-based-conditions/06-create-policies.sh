aws iam create-policy \
  --policy-name IPRestrictionPolicy \
  --policy-document file://ip-restriction-policy.json

aws iam create-policy \
  --policy-name VPCRestrictionPolicy \
  --policy-document file://vpc-restriction-policy.json

aws iam create-policy \
  --policy-name SecureAccessPolicy \
  --policy-document file://secure-access-policy.json
