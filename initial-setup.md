https://docs.docker.com/engine/install/debian/

## Pi Setup:

set ssh config to connect to raspberry pi with alias `pi`

# SSH INTO PI
```
ssh pi
sudo apt update
sudo apt upgrade -y
sudo apt install fastfetch
fastfetch
```

# Add Docker's official GPG key:
```
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/debian
Suites: $(. /etc/os-release && echo "$VERSION_CODENAME")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF
```

# Install Docker
```
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl status docker
sudo usermod -aG docker $USER
exit
```

## Local Setup:
```
cp .env.template .env
cp .env.template .env.pi
yarn run install
yarn run build
yarn run deploy:pi
```