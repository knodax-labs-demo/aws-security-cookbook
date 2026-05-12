export TASK_ARN=$(aws ecs list-tasks \
  --cluster "$CLUSTER_NAME" \
  --region "$REGION" \
  --query 'taskArns[0]' \
  --output text)
