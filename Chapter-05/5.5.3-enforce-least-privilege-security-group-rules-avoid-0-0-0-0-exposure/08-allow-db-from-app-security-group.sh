aws ec2 authorize-security-group-ingress \
  --group-id <DB_SECURITY_GROUP_ID> \
  --protocol tcp \
  --port 3306 \
  --source-group <APP_SECURITY_GROUP_ID>
