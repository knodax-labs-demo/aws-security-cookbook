echo $ENCRYPTED_KEY | base64 --decode > encrypted-key.bin
aws kms decrypt \
  --ciphertext-blob fileb://encrypted-key.bin \
  --query Plaintext \
  --output text | base64 --decode > decrypted-key.bin
