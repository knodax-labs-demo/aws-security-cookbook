cat <<EOF > env.sh
export REGION=us-east-1
export FUNCTION_NAME=SecureLambda
export ROLE_NAME=LambdaSecureRole
export API_NAME=SecureAPI
export SECRET_NAME=AppSecret
export STAGE_NAME=prod
EOF
