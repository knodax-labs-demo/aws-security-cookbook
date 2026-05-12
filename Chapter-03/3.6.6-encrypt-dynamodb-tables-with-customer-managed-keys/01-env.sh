cat <<EOF > env.sh
export TABLE_NAME=SecureUserProfiles
export REGION=us-east-1
export KMS_ALIAS=alias/dynamodb-secure-key
EOF
