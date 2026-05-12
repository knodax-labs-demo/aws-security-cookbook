cat <<EOF > env.sh
export REGION=us-east-1

# Replace with your EC2 instance ID
export INSTANCE_ID=i-xxxxxxxxxxxxxxxxx

export ISOLATION_SG_NAME=isolation-sg
EOF
