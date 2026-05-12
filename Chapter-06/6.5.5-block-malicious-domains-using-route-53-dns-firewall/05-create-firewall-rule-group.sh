RULE_GROUP_ID=$(aws route53resolver create-firewall-rule-group \
  --name $FIREWALL_GROUP_NAME \
  --query 'FirewallRuleGroup.Id' \
  --output text)
