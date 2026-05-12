DECRYPTED_KEY=$(cat decrypted-key.bin)

openssl enc -aes-256-cbc \
  -d \
  -in data.enc \
  -out data-decrypted.txt \
  -pass pass:$DECRYPTED_KEY
