TG_ARN=$(aws elbv2 create-target-group \
  --name private-tg \
  --protocol TCP \
  --port 80 \
  --vpc-id $VPC_ID \
  --target-type instance \
  --query 'TargetGroups[0].TargetGroupArn' \
  --output text)
