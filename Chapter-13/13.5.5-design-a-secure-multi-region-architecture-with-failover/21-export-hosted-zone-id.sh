export HOSTED_ZONE_ID=$(aws route53 list-hosted-zones-by-name \
  --dns-name "$DOMAIN_NAME" \
  --query 'HostedZones[0].Id' \
  --output text | sed 's|/hostedzone/||')

echo "$HOSTED_ZONE_ID"
