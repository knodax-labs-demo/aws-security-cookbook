cat <<EOF > env.sh
export REGION=us-east-1
export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export ARTIFACT_BUCKET=secure-artifacts-$(aws sts get-caller-identity --query Account --output text)
export SECRET_NAME=DBPassword
export KMS_ALIAS=alias/cicd-artifact-key
export CODEBUILD_ROLE_NAME=SecureCodeBuildRole
export CODEBUILD_PROJECT_NAME=SecureBuildProject
export LOG_GROUP_NAME=/aws/codebuild/SecureBuildProject
EOF
