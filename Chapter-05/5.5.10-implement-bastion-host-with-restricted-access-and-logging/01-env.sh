cat <<EOF > env.sh
export REGION=us-east-1
export VPC_ID=$(aws ec2 describe-vpcs --query "Vpcs[0].VpcId" --output text)
export PUBLIC_SUBNET=$(aws ec2 describe-subnets --query "Subnets[0].SubnetId" --output text)
export PRIVATE_SUBNET=$(aws ec2 describe-subnets --query "Subnets[1].SubnetId" --output text)

export BASTION_SG_NAME=bastion-sg
export PRIVATE_SG_NAME=private-sg
EOF
