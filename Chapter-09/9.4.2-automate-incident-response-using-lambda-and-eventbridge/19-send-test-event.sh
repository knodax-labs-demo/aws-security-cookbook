aws events put-events \
  --entries '[
    {
      "Source": "custom.incident",
      "DetailType": "Incident Response Test",
      "Detail": "{\"instance-id\":\"i-1234567890abcdef0\"}"
    }
  ]'
