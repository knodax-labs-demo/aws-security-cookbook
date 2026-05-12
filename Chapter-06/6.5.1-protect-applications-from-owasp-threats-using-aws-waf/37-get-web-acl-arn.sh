export WEB_ACL_ARN=$(aws wafv2 list-web-acls \
  --scope REGIONAL \
  --region $REGION \
  --query "WebACLs[?Name=='$WEB_ACL_NAME'].ARN" \
  --output text)
