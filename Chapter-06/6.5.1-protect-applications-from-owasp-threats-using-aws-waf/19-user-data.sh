cat <<'EOF' > user-data.sh
#!/bin/bash
dnf update -y
dnf install -y httpd
systemctl enable httpd
systemctl start httpd

cat <<HTML > /var/www/html/index.html
<html>
  <body>
    <h1>AWS WAF Demo Application</h1>
    <p>This web server is running behind an Application Load Balancer.</p>
  </body>
</html>
HTML
EOF
