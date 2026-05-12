aws events put-targets \
  --rule IAMKeyRotationSchedule \
  --targets "Id"="1","Arn"="arn:aws:lambda:$REGION:$ACCOUNT_ID:function:RotateIAMKeys"
