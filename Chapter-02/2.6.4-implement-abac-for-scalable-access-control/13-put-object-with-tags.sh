aws s3api put-object \
  --bucket $BUCKET_NAME \
  --key test.txt \
  --body test.txt \
  --tagging "Project=$PROJECT_TAG&Environment=$ENV_TAG" \
  --profile abac-demo
