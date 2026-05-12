aws sns list-topics \
  --region $REGION \
  --query "Topics[?TopicArn=='$SNS_TOPIC_ARN']"
