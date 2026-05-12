cat <<EOF > env.sh
export REGION=us-east-1
export FUNCTION_NAME=ComplianceEnforcer
export RULE_NAME=ComplianceEnforcementRule
export LAMBDA_ROLE_NAME=ComplianceEnforcerLambdaRole
EOF
