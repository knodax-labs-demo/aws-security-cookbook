aws auditmanager create-assessment \
  --name $ASSESSMENT_NAME \
  --framework-id <FRAMEWORK_ID> \
  --scope '{
    "awsAccounts":[{"id":"<ACCOUNT_ID>"}]
  }'
