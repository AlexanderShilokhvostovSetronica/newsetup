apt-get update
apt-get install curl

curl -sSL  https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main 9.4 | sudo tee /etc/apt/sources.list.d/postgres.list

#percona mysql
sudo apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
echo deb http://repo.percona.com/apt trusty  main | sudo tee  /etc/apt/sources.list.d/percona.list



curl -sSL  http://nginx.org/keys/nginx_signing.key | sudo apt-key add  -
echo deb http://nginx.org/packages/ubuntu/ trusty nginx | sudo tee /etc/apt/sources.list.d/nginx.list

apt-get update
apt-get install percona-server-server-5.6 percona-server-client-5.6 \
postgresql-9.4 \
nginx


