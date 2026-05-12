aws ec2 create-key-pair \
  --key-name bastionkey \
  --key-type rsa \
  --key-format pem \
  --query 'KeyMaterial' \
  --output text > key.pem
