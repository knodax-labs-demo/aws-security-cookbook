cat <<EOF > env.sh
export REGION=us-east-1
export FUNCTION_NAME=SelfHealingFunction
export RULE_NAME=SelfHealingRule
export CONFIG_RULE_NAME=s3-public-read-prohibited
EOF
