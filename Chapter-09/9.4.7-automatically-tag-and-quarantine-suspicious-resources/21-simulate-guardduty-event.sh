aws lambda invoke \
  --function-name "$FUNCTION_NAME" \
  --cli-binary-format raw-in-base64-out \
  --payload '{
    "detail": {
      "resource": {
        "instanceDetails": {
          "instanceId": "i-1234567890abcdef0"
        }
      }
    }
  }' \
  response.json \
  --region "$REGION"
