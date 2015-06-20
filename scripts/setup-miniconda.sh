#!/bin/bash
source "/vagrant/scripts/common.sh"

echo "Miniconda PATH: $MINICONDA_PATH"
echo "Miniconda Environment PATH: $MINICONDA_ENV_PATH"

# Install Miniconda
if [ ! -d $MINICONDA_PATH ]
then
    MINICONDA_INSTALLER=/home/vagrant/miniconda.sh
    if [ ! -e $MINICONDA_INSTALLER ]
    then
        wget -nv http://repo.continuum.io/miniconda/Miniconda-latest-Linux-x86_64.sh -O $MINICONDA_INSTALLER
    fi
    chmod +x $MINICONDA_INSTALLER
    chown vagrant:vagrant $MINICONDA_INSTALLER
    sudo -u vagrant $MINICONDA_INSTALLER -b -p $MINICONDA_PATH
    echo "export PATH=$MINICONDA_PATH/bin:\$PATH" >> /home/vagrant/.bashrc
fi
