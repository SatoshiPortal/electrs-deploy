git clone https://github.com/romanz/electrs
cd electrs
docker build -t electrs-app .
cd ..
sudo chown -R debian:debian ~/data
mkdir -p ~/data/tor/hidden_service
sudo cp tor/torrc ~/data/tor/
sudo chmod 700 ~/data/tor/hidden_service
sudo chown -R 2000:2000 ~/data/tor
