cat <<EOF > env.sh
export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export SECRET_NAME=prod/app/db-password
export FUNCTION_NAME=ReadSecretLambda
export ROLE_NAME=LambdaSecretsRole
EOF
