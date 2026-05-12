aws s3api create-bucket \
  --bucket "$SECONDARY_BUCKET" \
  --region "$SECONDARY_REGION" \
  --create-bucket-configuration LocationConstraint="$SECONDARY_REGION"

aws s3api put-bucket-versioning \
  --bucket "$SECONDARY_BUCKET" \
  --versioning-configuration Status=Enabled \
  --region "$SECONDARY_REGION"

aws s3api put-bucket-encryption \
  --bucket "$SECONDARY_BUCKET" \
  --server-side-encryption-configuration "{
    \"Rules\": [
      {
        \"ApplyServerSideEncryptionByDefault\": {
          \"SSEAlgorithm\": \"aws:kms\",
          \"KMSMasterKeyID\": \"$SECONDARY_KEY_ID\"
        }
      }
    ]
  }" \
  --region "$SECONDARY_REGION"
