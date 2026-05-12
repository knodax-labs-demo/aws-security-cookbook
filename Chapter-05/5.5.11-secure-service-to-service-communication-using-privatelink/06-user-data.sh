cat <<'EOF' > user-data.sh
#!/bin/bash
dnf install -y httpd
systemctl enable httpd
systemctl start httpd
echo "PrivateLink service is working" > /var/www/html/index.html
EOF
