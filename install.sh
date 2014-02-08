
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get install git && sudo apt-get install build-essential libboost-all-dev libcurl4-openssl-dev libdb5.1-dev libdb5.1++-dev



cd ~ && sudo apt-get install python-twisted python-mysqldb python-dev python-setuptools python-memcache python-simplejson &&easy_install -U distribute 


git clone https://github.com/Tydus/litecoin_scrypt.git && git clone https://github.com/ahmedbodi/stratum-mining.git && git clone https://github.com/ahmedbodi/stratum.git

cd stratum-mining
git submodule init
git submodule update

cd externals/litecoin_scrypt
sudo python setup.py install

cd ~
cp stratum-mining/conf/config_sample.py stratum-mining/conf/config.py
cd stratum-mining/externals/stratum
sudo python setup.py install

apt-get install mysql-server 
sudo apt-get install postfix

apt-get install python-pylibmc
apt-get install msgpack-python libmsgpack3 libmsgpackc2

sudo git clone git://github.com/TheSerapher/php-mpos.git MPOS
cd MPOS
sudo git checkout next

sudo mysql -p -e "create database mpos"
# Import structure
sudo mysql -p mpos < sql/000_base_structure.sql

sudo chown www-data public/templates/compile public/templates/cache

sudo cp public/include/config/global.inc.dist.php public/include/config/global.inc.php

