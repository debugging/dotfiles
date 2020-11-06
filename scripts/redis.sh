# sudo apt install build-essential tcl
cd ~/dl
curl -O http://download.redis.io/redis-stable.tar.gz
tar xzvf redis-stable.tar.gz
cd redis-stable
make
make test
sudo make install
sudo mkdir /etc/redis
sudo cp ~/dev/dl/redis-stable/redis.conf /etc/redis
sudo nano /etc/redis/redis.conf
sudo nano /etc/systemd/system/redis.service
sudo adduser --system --group --no-create-home redis
sudo mkdir /var/lib/redis
sudo chown redis:redis /var/lib/redis
sudo chown 770 /var/lib/redis
sudo systemctl start redis
sudo systemctl status redis