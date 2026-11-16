# Proyecto 1: Librería Tinta

## Descripción del proyecto

Este proyecto consiste en desplegar una página web para la Librería Tinta utilizando los servicios de Amazon Web Services (AWS).

Se ha configurado una red virtual (VPC) con una subred pública, acceso a Internet y las reglas de seguridad necesarias para alojar los servidores web. Además, se ha utilizado Amazon Route 53 para configurar un DNS privado y AWS CLI para automatizar el despliegue de una instancia.

## 1. Diagrama de arquitectura

El siguiente diagrama muestra la infraestructura desplegada en AWS, incluyendo la VPC, la subred pública, el Internet Gateway, la tabla de rutas, los grupos de seguridad, las instancias EC2 y la configuración de Route 53.

![Arquitectura AWS de Librería Tinta](img/Arquitectura-Libreria-Tinta.drawio.png)
## 2. Configuración de la infraestructura AWS

### B1. Creación de la red

Para desplegar la web de Librería Tinta, se ha creado una VPC llamada `libreria-vpc`, con el bloque de direcciones `10.0.0.0/16`, en la región `us-east-1`.

![VPC creada](img/02-vpc-creada.png)

Dentro de esta VPC se ha configurado una subred pública llamada `libreria-publica`, con el rango `10.0.1.0/24`. Se ha habilitado la asignación automática de direcciones IPv4 públicas para que las instancias puedan ser accesibles desde Internet.

![Configuración de la subred pública](img/05-subred-ip-publica.png)

También se ha creado un Internet Gateway llamado `libreria-igw` y se ha asociado a la VPC para permitir la comunicación con Internet.

![Internet Gateway](img/03-internet-gateway.png)
