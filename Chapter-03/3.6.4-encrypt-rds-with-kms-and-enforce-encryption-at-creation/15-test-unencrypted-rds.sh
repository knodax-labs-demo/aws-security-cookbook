aws rds create-db-instance \
  --profile dev-user \
  --db-instance-identifier test-unencrypted-2 \
  --engine mysql \
  --db-instance-class db.t3.micro \
  --allocated-storage 20 \
  --master-username admin \
  --master-user-password password
