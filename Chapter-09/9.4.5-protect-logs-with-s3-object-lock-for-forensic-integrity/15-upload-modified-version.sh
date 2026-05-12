echo "Modified log entry" > log.txt
aws s3 cp log.txt s3://$BUCKET_NAME/
