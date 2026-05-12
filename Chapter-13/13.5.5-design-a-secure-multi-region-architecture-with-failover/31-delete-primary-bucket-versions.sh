aws s3api delete-objects \
  --bucket "$PRIMARY_BUCKET" \
  --delete "$(aws s3api list-object-versions \
    --bucket "$PRIMARY_BUCKET" \
    --query '{Objects: Versions[].{Key:Key,VersionId:VersionId}}' \
    --output json)" \
  --region "$PRIMARY_REGION" 2>/dev/null || true
