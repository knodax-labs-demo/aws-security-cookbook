SNS_TOPIC_ARN=$(aws sns create-topic \
  --name $TOPIC_NAME \
  --query 'TopicArn' \
  --output text)
