export TARGET_GROUP_ARN=$(aws elbv2 create-target-group \
  --name $TARGET_GROUP_NAME \
  --protocol HTTP \
  --port 80 \
  --vpc-id $VPC_ID \
  --target-type instance \
  --region $REGION \
  --query 'TargetGroups[0].TargetGroupArn' \
  --output text)
