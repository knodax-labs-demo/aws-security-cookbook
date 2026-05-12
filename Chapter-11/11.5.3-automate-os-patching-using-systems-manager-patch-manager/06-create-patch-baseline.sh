export BASELINE_ID=$(aws ssm create-patch-baseline \
  --name "$PATCH_BASELINE_NAME" \
  --operating-system AMAZON_LINUX_2 \
  --approval-rules '{
    "PatchRules": [
      {
        "PatchFilterGroup": {
          "PatchFilters": [
            {
              "Key": "CLASSIFICATION",
              "Values": ["Security"]
            },
            {
              "Key": "SEVERITY",
              "Values": ["Critical", "Important"]
            }
          ]
        },
        "ApproveAfterDays": 0
      }
    ]
  }' \
  --region "$REGION" \
  --query 'BaselineId' \
  --output text)
