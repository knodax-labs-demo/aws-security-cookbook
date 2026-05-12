export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export ROLE_NAME=IncidentResponseLambdaRole
export ROLE_ARN=arn:aws:iam::$ACCOUNT_ID:role/$ROLE_NAME
