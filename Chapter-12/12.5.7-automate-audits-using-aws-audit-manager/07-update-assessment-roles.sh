aws auditmanager update-assessment \
  --assessment-id <ASSESSMENT_ID> \
  --roles '[
    {
      "roleType":"PROCESS_OWNER",
      "roleArn":"arn:aws:iam::<ACCOUNT_ID>:role/<ROLE_NAME>"
    }
  ]'
