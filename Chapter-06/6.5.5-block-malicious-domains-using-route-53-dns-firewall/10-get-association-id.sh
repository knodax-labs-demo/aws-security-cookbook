export ASSOCIATION_ID=$(aws route53resolver list-firewall-rule-group-associations \
  --region $REGION \
  --query 'FirewallRuleGroupAssociations[0].Id' \
  --output text)
