# green-env

Para iniciar:
docker-compose up --build

se sincroniza la carpeta del contenedor en: 
/home/tryton-env
con esta direccion en la maquina que corre el ontenedor:
/home/tryton-env


Para ver los contenedores:
docker ps

Para entrar en el contenedor de tryton:
docker exec -it --user root <contenedor> bash

Cada cambio en Modulos es instalable desde su respectivo setup.py
ejemplo:
python3 /home/tryton-env/modules/country/setup.py install

ipendientes:

copy tryton.conf

apt-get update
apt-get install  sqlite3 vim net-tools -y
 crear datatest

ojo
estamos usando un Dockerfile armado para 5.0.1
tryton-env esta en 5.1, reinstalar manualmente:
country
party
account

cd ~
apt-get update -y
apt-get install gnupg -y
curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt-getls install nodejs -y
apt-get install grunt -y



#! estos comandos se deben ejecutar dentro de la carpeta '/home/tryton-env/tryton-env/sao/', desde el usuario 'supervisor'
sudo chmod -R 777 .
npm install --production
grunt

#! no olvidar passwords en produccion, a 'root' y a 'supervisor'
passwd

