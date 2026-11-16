#!/bin/bash
dnf install -y nginx
systemctl enable --now nginx

cat > /usr/share/nginx/html/index.html <<EOF
<!doctype html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>Librería Tinta</title>
</head>
<body>
  <h1>Librería Tinta</h1>
  <p>Tu librería de barrio, donde cada libro cuenta una historia.</p>

  <h2>Sobre nosotros</h2>
  <p>Bienvenidos a Librería Tinta, un espacio para los amantes de la lectura.</p>

  <h2>Horario</h2>
  <p>Lunes a viernes: 9:00 - 20:00</p>
  <p>Sábados: 10:00 - 14:00</p>

  <h2>Dirección</h2>
  <p>Calle Mayor, 15 - Alicante, España</p>

  <h2>Libro recomendado</h2>
  <p>El principito, de Antoine de Saint-Exupéry.</p>

  <hr>
  <small>Desplegado por Diana Boiko en el servidor $(hostname) el $(date '+%d/%m/%Y %H:%M')</small>
</body>
</html>
EOF