aws s3api delete-bucket-policy \
  --bucket $BUCKET_NAME

aws s3api delete-bucket \
  --bucket $BUCKET_NAME

rm -f env.sh enforce-https-policy.json enforce-tls-policy.json
