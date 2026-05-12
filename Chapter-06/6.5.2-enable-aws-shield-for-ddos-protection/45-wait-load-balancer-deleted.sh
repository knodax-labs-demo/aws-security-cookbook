aws elbv2 wait load-balancers-deleted \
  --load-balancer-arns $ALB_ARN \
  --region $REGION
