cat <<EOF > env.sh
export REGION=us-east-1
export API_NAME=SecureAPI
export STAGE_NAME=prod
export LAMBDA_FUNCTION_NAME=APIGatewayAuthorizer
export LAMBDA_ROLE_NAME=APIGatewayAuthorizerRole
EOF
