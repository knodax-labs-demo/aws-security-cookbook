NLB_ARN=$(aws elbv2 create-load-balancer \
  --name private-nlb \
  --type network \
  --scheme internal \
  --subnets $SUBNET_ID \
  --query 'LoadBalancers[0].LoadBalancerArn' \
  --output text)
