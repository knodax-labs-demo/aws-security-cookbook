aws iam put-role-policy \
  --role-name $ROLE_NAME \
  --policy-name FirehoseS3Policy \
  --policy-document file://firehose-policy.json
