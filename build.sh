git clone https://github.com/romanz/electrs
cd electrs
docker build -t electrs-app .
cd ..
mkdir -p ~/data/tor/hidden_service
cp tor/torrc ~/data/tor/
chmod 700 ~/data/tor/hidden_service
sudo chown -R 2000:2000 ~/data/tor
