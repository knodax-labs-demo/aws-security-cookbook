aws events put-rule \
  --name IAMKeyRotationSchedule \
  --schedule-expression "rate(1 day)"
