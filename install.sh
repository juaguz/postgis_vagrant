#!/bin/bash
sudo apt-get install  -y python-software-properties

sudo apt-get update -y


echo "DJANGO"

sudo apt-get -y update

sudo apt-get install -y python-setuptools python-dev build-essential

sudo easy_install pip

sudo pip install virtualenv

echo "POSTGRES"

sudo apt-get install -y build-essential postgresql-9.1 postgresql-server-dev-9.1 libxml2-dev libproj-dev libjson0-dev xsltproc docbook-xsl docbook-mathml

echo "GEOS"

wget http://download.osgeo.org/geos/geos-3.3.9.tar.bz2

tar xfj geos-3.3.9.tar.bz2

cd geos-3.3.9

./configure

make

sudo make install

cd ..


echo "Build PostGIS"

wget http://download.osgeo.org/postgis/source/postgis-2.0.6.tar.gz

tar xfz postgis-2.0.6.tar.gz

cd postgis-2.0.6

./configure

make

sudo make install

sudo ldconfig


sudo make comments-install

sudo ln -sf /usr/share/postgresql-common/pg_wrapper /usr/local/bin/shp2pgsql

sudo ln -sf /usr/share/postgresql-common/pg_wrapper /usr/local/bin/pgsql2shp

sudo ln -sf /usr/share/postgresql-common/pg_wrapper /usr/local/bin/raster2pgsql

