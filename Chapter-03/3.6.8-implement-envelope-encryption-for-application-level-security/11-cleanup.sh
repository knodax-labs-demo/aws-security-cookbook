rm -f data.txt data.enc data-decrypted.txt data-key.json decrypted-key.bin encrypted-key.bin

aws kms delete-alias \
  --alias-name $KMS_ALIAS

aws kms schedule-key-deletion \
  --key-id $KMS_KEY_ID \
  --pending-window-in-days 7
