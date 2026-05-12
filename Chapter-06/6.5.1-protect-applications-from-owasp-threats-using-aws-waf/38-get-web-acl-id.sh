export WEB_ACL_ID=$(aws wafv2 list-web-acls \
  --scope REGIONAL \
  --region $REGION \
  --query "WebACLs[?Name=='$WEB_ACL_NAME'].Id" \
  --output text)
