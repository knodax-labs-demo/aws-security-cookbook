cat <<EOF > env.sh
export REGION=us-east-1
export FUNCTION_NAME=QuarantineSuspiciousInstance
export LAMBDA_ROLE_NAME=QuarantineLambdaRole
export QUARANTINE_SG_NAME=quarantine-sg
EOF
