export WINDOW_TASK_ID=$(aws ssm register-task-with-maintenance-window \
  --window-id "$WINDOW_ID" \
  --task-arn "AWS-RunPatchBaseline" \
  --task-type RUN_COMMAND \
  --targets Key=WindowTargetIds,Values="$WINDOW_TARGET_ID" \
  --service-role-arn "$SERVICE_ROLE_ARN" \
  --task-invocation-parameters '{
    "RunCommand": {
      "Parameters": {
        "Operation": ["Install"]
      }
    }
  }' \
  --priority 1 \
  --max-concurrency "1" \
  --max-errors "1" \
  --region "$REGION" \
  --query 'WindowTaskId' \
  --output text)
