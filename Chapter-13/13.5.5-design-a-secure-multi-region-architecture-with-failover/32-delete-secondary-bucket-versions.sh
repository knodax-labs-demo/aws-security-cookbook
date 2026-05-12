aws s3api delete-objects \
  --bucket "$SECONDARY_BUCKET" \
  --delete "$(aws s3api list-object-versions \
    --bucket "$SECONDARY_BUCKET" \
    --query '{Objects: Versions[].{Key:Key,VersionId:VersionId}}' \
    --output json)" \
  --region "$SECONDARY_REGION" 2>/dev/null || true
