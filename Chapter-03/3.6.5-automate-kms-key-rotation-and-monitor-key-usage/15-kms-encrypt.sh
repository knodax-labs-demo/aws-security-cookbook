aws kms encrypt \
  --key-id $KMS_KEY_ID \
  --plaintext fileb://<(echo "test-data")
