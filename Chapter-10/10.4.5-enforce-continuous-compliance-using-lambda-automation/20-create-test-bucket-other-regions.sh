aws s3api create-bucket \
  --bucket "$TEST_BUCKET" \
  --region "$REGION" \
  --create-bucket-configuration LocationConstraint="$REGION"
