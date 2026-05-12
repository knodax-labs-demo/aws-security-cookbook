aws events put-events \
  --entries '[
    {
      "Source": "custom.guardduty",
      "DetailType": "GuardDuty Finding",
      "Detail": "{\"resource\":{\"instanceDetails\":{\"instanceId\":\"i-1234567890abcdef0\"}}}"
    }
  ]'
