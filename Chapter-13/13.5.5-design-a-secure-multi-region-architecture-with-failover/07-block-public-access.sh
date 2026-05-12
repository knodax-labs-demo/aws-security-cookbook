aws s3api put-public-access-block \
  --bucket "$PRIMARY_BUCKET" \
  --public-access-block-configuration BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true \
  --region "$PRIMARY_REGION"

aws s3api put-public-access-block \
  --bucket "$SECONDARY_BUCKET" \
  --public-access-block-configuration BlockPublicAcls=true,IgnorePublicAcls=true,BlockPublicPolicy=true,RestrictPublicBuckets=true \
  --region "$SECONDARY_REGION"
