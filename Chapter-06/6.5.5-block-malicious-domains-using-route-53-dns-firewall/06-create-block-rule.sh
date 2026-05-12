aws route53resolver create-firewall-rule \
  --firewall-rule-group-id $RULE_GROUP_ID \
  --firewall-domain-list-id $DOMAIN_LIST_ID \
  --priority 100 \
  --action BLOCK \
  --block-response NODATA \
  --name block-malicious-domains \
  --region $REGION
