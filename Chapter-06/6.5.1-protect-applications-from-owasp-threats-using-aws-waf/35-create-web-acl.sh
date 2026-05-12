aws wafv2 create-web-acl \
  --name $WEB_ACL_NAME \
  --scope REGIONAL \
  --default-action Allow={} \
  --rules file://waf-rules.json \
  --visibility-config \
    SampledRequestsEnabled=true,\
CloudWatchMetricsEnabled=true,\
MetricName=webACL \
  --region $REGION
