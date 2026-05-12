export PROTECTION_ID=$(aws shield list-protections \
  --query 'Protections[0].Id' \
  --output text)
