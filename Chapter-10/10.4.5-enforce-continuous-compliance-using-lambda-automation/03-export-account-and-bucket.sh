export ACCOUNT_ID=$(aws sts get-caller-identity --query Account --output text)
export TEST_BUCKET=compliance-test-$ACCOUNT_ID-$REGION
