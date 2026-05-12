aws shield describe-protection \
  --protection-id $(aws shield list-protections \
    --query 'Protections[0].Id' \
    --output text)
