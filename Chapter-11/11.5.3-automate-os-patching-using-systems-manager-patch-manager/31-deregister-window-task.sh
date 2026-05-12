aws ssm deregister-task-from-maintenance-window \
  --window-id "$WINDOW_ID" \
  --window-task-id "$WINDOW_TASK_ID" \
  --region "$REGION"
