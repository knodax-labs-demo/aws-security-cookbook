DOMAIN_LIST_ID=$(aws route53resolver create-firewall-domain-list \
  --name $DOMAIN_LIST_NAME \
  --query 'FirewallDomainList.Id' \
  --output text)
