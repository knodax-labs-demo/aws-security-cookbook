LOCK_TOKEN=$(aws wafv2 get-web-acl \
  --name $WEB_ACL_NAME \
  --scope REGIONAL \
  --id $WEB_ACL_ID \
  --region $REGION \
  --query 'LockToken' \
  --output text)
