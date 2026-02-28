#!/bin/bash

echo "Deploying to pi..." &&
rm -rf deploy.zip &&
zip -r deploy.zip ./api ./build/client ./server ./docker-compose.yml -x 'node_modules' '**/node_modules' '**/debug.log' 'deploy*' 'package.json' '**/package.json' 'package-lock.json' '**/package-lock.json' '.env' '.gitignore' 'yarn.lock' '.react-router' &&
scp ./deploy.zip pi:~/deploy.zip &&
rm -rf deploy.zip &&
ssh pi << EOF
  mkdir site
  sudo rm -rf deploy
  mkdir deploy
  mv deploy.zip deploy/deploy.zip
  cd deploy
  sudo unzip deploy.zip
  sudo rm -rf deploy.zip
  sudo rsync -r ./* ../site
  cd ../site
  docker compose down
  docker compose up --build -d
EOF &&
echo "Finished deploy to pi..."