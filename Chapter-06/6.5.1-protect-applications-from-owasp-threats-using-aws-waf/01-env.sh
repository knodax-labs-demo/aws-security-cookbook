cat <<EOF > env.sh
export REGION=us-east-1
export WEB_ACL_NAME=owasp-protection-acl
export VPC_NAME=waf-demo-vpc
export INSTANCE_NAME=waf-demo-web-server
export ALB_NAME=waf-demo-alb
export TARGET_GROUP_NAME=waf-demo-tg
export KEY_NAME=waf-demo-key
export AMI_ID=$(aws ec2 describe-images \
  --owners amazon \
  --filters "Name=name,Values=al2023-ami-*-x86_64" "Name=state,Values=available" \
  --query "Images | sort_by(@, &CreationDate)[-1].ImageId" \
  --output text \
  --region us-east-1)
EOF
