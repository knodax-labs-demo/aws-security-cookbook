cat <<EOF > env.sh
export REGION=us-east-1
export VPC_ID=$(aws ec2 describe-vpcs \
  --query "Vpcs[0].VpcId" \
  --output text)

export DOMAIN_LIST_NAME=malicious-domains
export FIREWALL_GROUP_NAME=dns-firewall-group
EOF
