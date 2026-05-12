aws iam get-credential-report \
  --query 'Content' \
  --output text | base64 --decode > credential-report.csv
