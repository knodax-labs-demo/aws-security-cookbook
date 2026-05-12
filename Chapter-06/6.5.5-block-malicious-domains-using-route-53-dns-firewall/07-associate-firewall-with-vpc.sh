aws route53resolver associate-firewall-rule-group \
  --firewall-rule-group-id $RULE_GROUP_ID \
  --vpc-id $VPC_ID \
  --priority 101 \
  --name dns-firewall-association \
  --region $REGION
