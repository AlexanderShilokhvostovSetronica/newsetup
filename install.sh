apt-get update
apt-get install curl

curl -sSL  https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

echo deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main 9.4 | sudo tee /etc/apt/sources.list.d/postgres.list

#percona mysql
sudo apt-key adv --keyserver keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
echo deb http://repo.percona.com/apt trusty  main | sudo tee  /etc/apt/sources.list.d/percona.list

sudo add-apt-repository ppa:nginx/stable

wget -qP /tmp/ http://repo.zabbix.com/zabbix/2.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_2.4-1+trusty_all.deb && dpkg -i /tmp/zabbix-release_2.4-1+trusty_all.deb && rm -rf /tmp/zabbix-release_2.4-1+trusty_all.deb

sed -i "/^# deb .*partner/ s/^# //; /multiverse/d" /etc/apt/sources.list
echo "deb http://ru.archive.ubuntu.com/ubuntu/ trusty multiverse" >> /etc/apt/sources.list
echo "deb http://ru.archive.ubuntu.com/ubuntu/ trusty-updates multiverse" >> /etc/apt/sources.list

sudo apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo deb https://apt.dockerproject.org/repo ubuntu-trusty main | sudo tee /etc/apt/sources.list.d/docker.list

echo deb mirror://mirrors.ubuntu.com/mirrors.txt trusty main restricted universe multiverse | sudo tee /etc/apt/sources.list.d/mirror.list
echo deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-updates main restricted universe multiverse | sudo tee -a /etc/apt/sources.list.d/mirror.list
echo deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-backports main restricted universe multiverse | sudo tee -a /etc/apt/sources.list.d/mirror.list
echo deb mirror://mirrors.ubuntu.com/mirrors.txt trusty-security main restricted universe multiverse | sudo tee -a /etc/apt/sources.list.d/mirror.list

apt-get install percona-server-server-5.6 percona-server-client-5.6 \
postgresql-9.4 \
nginx \
zabbix-agent \
docker-engine \
ssh vim mc iptraf bash-completion tcpdump mtr-tiny screen tmux rar unrar zip unzip lsof whois rlwrap dstat sudo xz-utils git mercurial etckeeper bridge-utils haveged strace ntp xfsprogs



