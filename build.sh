cd tor
docker build -t tor .
cd ..
git clone https://github.com/romanz/electrs
cd electrs
docker build -t electrs-app .
cd ..
mkdir -p ~/data/tor/hidden_service ~/data/bitcoin ~/data/electrs
cp bitcoin.conf ~/data/bitcoin
sudo cp tor/torrc ~/data/tor/
sudo chown -R debian:debian ~/data
sudo chmod 700 ~/data/tor/hidden_service
sudo chown -R 2000:2000 ~/data/tor
