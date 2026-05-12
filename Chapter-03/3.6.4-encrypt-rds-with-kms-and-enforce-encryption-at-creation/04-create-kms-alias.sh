aws kms create-alias \
  --alias-name $KMS_KEY_ALIAS \
  --target-key-id $KEY_ID
