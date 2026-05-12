ASSOC1=$(aws ec2 describe-route-tables \
  --route-table-ids $RTB1_ID \
  --query 'RouteTables[0].Associations[0].RouteTableAssociationId' \
  --output text)

ASSOC2=$(aws ec2 describe-route-tables \
  --route-table-ids $RTB2_ID \
  --query 'RouteTables[0].Associations[0].RouteTableAssociationId' \
  --output text)
