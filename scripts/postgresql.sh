sudo apt -y install vim bash-completion wget
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" |sudo tee  /etc/apt/sources.list.d/pgdg.list
echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg-testing main 13" |sudo tee  /etc/apt/sources.list.d/pgdg-testing.list
sudo apt update
sudo apt install postgresql-13 postgresql-client-13
systemctl status postgresql.service 
systemctl is-enabled postgresql

# sudo su - postgres

# https://computingforgeeks.com/how-to-install-postgresql-13-on-ubuntu/