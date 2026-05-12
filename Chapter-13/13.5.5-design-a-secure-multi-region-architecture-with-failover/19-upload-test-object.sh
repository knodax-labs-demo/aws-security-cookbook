echo "secure multi-region test" > failover-test.txt

aws s3api put-object \
  --bucket "$PRIMARY_BUCKET" \
  --key failover-test.txt \
  --body failover-test.txt \
  --server-side-encryption aws:kms \
  --ssekms-key-id "$PRIMARY_KEY_ID" \
  --region "$PRIMARY_REGION"
