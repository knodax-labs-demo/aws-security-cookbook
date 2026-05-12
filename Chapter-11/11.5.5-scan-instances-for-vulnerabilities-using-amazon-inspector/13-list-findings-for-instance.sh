aws inspector2 list-findings \
  --filter-criteria "{
    \"resourceId\": [
      {
        \"comparison\": \"EQUALS\",
        \"value\": \"$INSTANCE_ID\"
      }
    ]
  }" \
  --region "$REGION"
