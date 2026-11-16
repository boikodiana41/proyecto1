#!/bin/bash
dnf update -y
dnf install -y httpd
systemctl enable httpd
systemctl start httpd

cat > /var/www/html/index.html <<'EOF'
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Librería Tinta - Servidor 2</title>
</head>
<body>
    <h1>Bienvenido a Librería Tinta</h1>
    <h2>Servidor 2 - Segunda versión de la web</h2>
    <p>Esta página corresponde al servidor que recibirá un peso del 20 % en Route 53.</p>
</body>
</html>
EOF
