aws s3api create-bucket \
  --bucket "$PRIMARY_BUCKET" \
  --region "$PRIMARY_REGION"

aws s3api put-bucket-versioning \
  --bucket "$PRIMARY_BUCKET" \
  --versioning-configuration Status=Enabled \
  --region "$PRIMARY_REGION"

aws s3api put-bucket-encryption \
  --bucket "$PRIMARY_BUCKET" \
  --server-side-encryption-configuration "{
    \"Rules\": [
      {
        \"ApplyServerSideEncryptionByDefault\": {
          \"SSEAlgorithm\": \"aws:kms\",
          \"KMSMasterKeyID\": \"$PRIMARY_KEY_ID\"
        }
      }
    ]
  }" \
  --region "$PRIMARY_REGION"
