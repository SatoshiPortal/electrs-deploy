# Setting up an electrum server using electrs

## Install docker

```
sudo apt-get update
sudo apt-get install  -y   apt-transport-https     ca-certificates     curl     gnupg2     software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
```

Logout
Hard reboot

## Init docker swarm and overlay network, once
```
docker swarm init
docker network create --driver=overlay --attachable --opt encrypted electrsnet
```

## Do the following line only if data_bitcoin_mainnet doesn't already exist / isn't already mounted
```
cd ; mkdir data ; sudo mount /dev/vdc data/
```

## Build the image -- if updating, remove all cached images
```
./build.sh
```

## Start TLS manager (Let's Encrypt Companion) + Electrs
```
docker stack deploy -c docker-compose.yml electrs
```