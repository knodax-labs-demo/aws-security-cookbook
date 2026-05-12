aws s3api put-bucket-replication \
  --bucket "$PRIMARY_BUCKET" \
  --replication-configuration file://replication-config.json \
  --region "$PRIMARY_REGION"
