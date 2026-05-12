aws events put-targets \
  --rule StaleCredentialCheck \
  --targets "Id"="1","Arn"="arn:aws:lambda:$REGION:$ACCOUNT_ID:function:DisableStaleCredentials"
