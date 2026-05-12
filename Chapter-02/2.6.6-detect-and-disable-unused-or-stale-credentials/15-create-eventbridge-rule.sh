aws events put-rule \
  --name StaleCredentialCheck \
  --schedule-expression "rate(1 day)"
