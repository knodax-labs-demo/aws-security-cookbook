aws s3api put-bucket-tagging \
  --bucket $BUCKET_NAME \
  --tagging "TagSet=[
    {Key=Project,Value=$PROJECT_TAG},
    {Key=Environment,Value=$ENV_TAG}
  ]"
