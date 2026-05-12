export SECURITY_GROUP_ID=$(aws ec2 create-security-group \
  --group-name ecs-task-sg \
  --description "Security group for ECS task" \
  --vpc-id "$VPC_ID" \
  --region "$REGION" \
  --query 'GroupId' \
  --output text)
