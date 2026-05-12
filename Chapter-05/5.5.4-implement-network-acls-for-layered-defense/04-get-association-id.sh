ASSOCIATION_ID=$(aws ec2 describe-network-acls \
  --filters Name=association.subnet-id,Values=$SUBNET_ID \
  --query "NetworkAcls[0].Associations[0].NetworkAclAssociationId" \
  --output text)
