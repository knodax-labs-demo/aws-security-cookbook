aws kms generate-data-key \
  --key-id $KMS_KEY_ID \
  --key-spec AES_256 \
  --query '{Plaintext:Plaintext,CiphertextBlob:CiphertextBlob}' \
  --output json > data-key.json
