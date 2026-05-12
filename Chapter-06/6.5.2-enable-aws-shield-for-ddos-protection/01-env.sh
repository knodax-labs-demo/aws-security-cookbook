cat <<EOF > env.sh
export REGION=us-east-1

export VPC_NAME=shield-demo-vpc
export INSTANCE_NAME=shield-demo-web
export ALB_NAME=shield-demo-alb
export TARGET_GROUP_NAME=shield-demo-tg

export SNS_TOPIC_NAME=ShieldAlerts

export AMI_ID=$(aws ec2 describe-images \
  --owners amazon \
  --filters "Name=name,Values=al2023-ami-*-x86_64" \
  --query "Images | sort_by(@, &CreationDate)[-1].ImageId" \
  --output text \
  --region us-east-1)
EOF
