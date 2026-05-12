aws wafv2 delete-web-acl \
  --name $WEB_ACL_NAME \
  --scope REGIONAL \
  --id $WEB_ACL_ID \
  --lock-token $LOCK_TOKEN \
  --region $REGION
