export LAMBDA_ROLE_NAME=QuarantineLambdaRole
aws iam create-role \
  --role-name $LAMBDA_ROLE_NAME \
  --assume-role-policy-document file://lambda-trust-policy.json
