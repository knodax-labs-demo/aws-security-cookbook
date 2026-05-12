cat <<EOF > env.sh
export REGION=us-east-1
export DB_INSTANCE_ID=secure-db
export DB_NAME=appdb
export DB_USER=admin
export DB_PASSWORD=MySecurePass123

export KMS_KEY_ALIAS=alias/rds-secure-key

export VPC_ID=$(aws ec2 describe-vpcs \
  --query "Vpcs[0].VpcId" \
  --output text)

export SG_NAME=rds-secure-sg
export SUBNET_GROUP_NAME=rds-secure-subnet-group
EOF
