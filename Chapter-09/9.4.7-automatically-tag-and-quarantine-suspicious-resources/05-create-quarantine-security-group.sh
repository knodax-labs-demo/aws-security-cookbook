export QUARANTINE_SG_NAME=quarantine-sg
export QUARANTINE_SG=$(aws ec2 create-security-group \
  --group-name $QUARANTINE_SG_NAME \
  --description "Quarantine security group with no inbound access" \
  --vpc-id $VPC_ID \
  --region $REGION \
  --query 'GroupId' \
  --output text)
