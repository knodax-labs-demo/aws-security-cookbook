openssl enc -aes-256-cbc \
  -salt \
  -in data.txt \
  -out data.enc \
  -pass pass:$PLAINTEXT_KEY
