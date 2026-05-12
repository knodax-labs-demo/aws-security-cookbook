cat <<'EOF' > user-data.sh
#!/bin/bash

dnf update -y
dnf install -y httpd

systemctl enable httpd
systemctl start httpd

cat <<HTML > /var/www/html/index.html
<html>
  <body>
    <h1>AWS Shield Demo</h1>
    <p>Application protected behind an ALB.</p>
  </body>
</html>
HTML
EOF
