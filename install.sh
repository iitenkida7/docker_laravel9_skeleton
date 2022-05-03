#!/bin/bash -xue

CURRENT=$(pwd)
INSTALL_DIR=${1:-${CURRENT}/project}

if [ -d "${INSTALL_DIR}" ]; then
  echo "Error: Already exists directory" 1>&2
  exit 1;
else
  mkdir -p "${INSTALL_DIR}"
fi

cd ${INSTALL_DIR}

git clone git@github.com:iitenkida7/docker_laravel9_skeleton.git .
rm -rf .git

#Install ssl to nginx
SSL_DIR=./docker/nginx/ssl
openssl req -x509 -sha256 -nodes -days 3650 -newkey rsa:2048 -subj /CN=localhost -keyout ${SSL_DIR}/server.key -out ${SSL_DIR}/server.crt

#Build container
docker-compose build #--pull --no-cache

#Install laravel

docker-compose run --rm laravel bash -c "cd .. && composer create-project laravel/laravel"
mv laravel laravel_ && mv laravel_/laravel . && rmdir laravel_
docker-compose up -d

echo "Let's access!"
echo "http://localhost/"
