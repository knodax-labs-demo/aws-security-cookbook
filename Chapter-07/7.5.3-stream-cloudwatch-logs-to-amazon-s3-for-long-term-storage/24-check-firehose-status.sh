aws firehose describe-delivery-stream \
  --delivery-stream-name $FIREHOSE_NAME \
  --query 'DeliveryStreamDescription.DeliveryStreamStatus' \
  --output text \
  --region $REGION
