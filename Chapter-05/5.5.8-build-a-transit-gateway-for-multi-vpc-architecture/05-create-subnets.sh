SUBNET1A=$(aws ec2 create-subnet --vpc-id $VPC1_ID --cidr-block $VPC1_SUBNET1 --availability-zone $AZ1 --query 'Subnet.SubnetId' --output text)
SUBNET1B=$(aws ec2 create-subnet --vpc-id $VPC1_ID --cidr-block $VPC1_SUBNET2 --availability-zone $AZ2 --query 'Subnet.SubnetId' --output text)

SUBNET2A=$(aws ec2 create-subnet --vpc-id $VPC2_ID --cidr-block $VPC2_SUBNET1 --availability-zone $AZ1 --query 'Subnet.SubnetId' --output text)
SUBNET2B=$(aws ec2 create-subnet --vpc-id $VPC2_ID --cidr-block $VPC2_SUBNET2 --availability-zone $AZ2 --query 'Subnet.SubnetId' --output text)
