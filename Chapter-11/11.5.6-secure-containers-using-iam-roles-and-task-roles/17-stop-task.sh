if [ "$TASK_ARN" != "None" ]; then
  aws ecs stop-task \
    --cluster "$CLUSTER_NAME" \
    --task "$TASK_ARN" \
    --region "$REGION"
fi
