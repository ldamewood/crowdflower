#!/bin/bash
source "/vagrant/scripts/common.sh"

sudo -u vagrant $MINICONDA_PATH/bin/conda update --yes conda
sudo -u vagrant $MINICONDA_PATH/bin/conda env update --file=$MINICONDA_ENV_FILE

apt-get update
apt-get -y install build-essential python-dev git
(cd /home/vagrant; sudo -u vagrant -H $MINICONDA_ENV_PATH/bin/pip install -r /vagrant/requirements.txt)
