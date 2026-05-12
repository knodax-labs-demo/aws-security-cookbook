aws route53resolver update-firewall-domains \
  --firewall-domain-list-id $DOMAIN_LIST_ID \
  --operation ADD \
  --domains badsite.com malware.example phishing-site.org
