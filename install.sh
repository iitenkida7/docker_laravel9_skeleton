#!/bin/bash -ue

CURRENT=$(pwd)
INSTALL_DIR=${1:-${CURRENT}/project}

if [ ! -d "${INSTALL_DIR}" ]; then
  mkdir -p "${INSTALL_DIR}"
else
  echo "Error: Already exists directory" 1>&2
  exit 1;
fi

cd ${INSTALL_DIR}
git clone git@github.com:iitenkida7/docker_laravel9_skeleton.git .
rm -rf .git
docker-compose build #--pull --no-cache
docker-compose run --rm laravel composer create-project laravel/laravel
mv laravel laravel_ && mv laravel_/laravel . && rmdir laravel_
docker-compose up -d

echo "Let's access!"
echo "http://localhost/"
