aws elbv2 create-listener \
  --load-balancer-arn <LB_ARN> \
  --protocol HTTPS \
  --port 443 \
  --certificates CertificateArn=<CERT_ARN> \
  --ssl-policy ELBSecurityPolicy-TLS13-1-2-2021-06
