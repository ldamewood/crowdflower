#!/bin/bash
source "/vagrant/scripts/common.sh"
sudo -u vagrant $MINICONDA_ENV_PATH/bin/conda install -n $MINICONDA_ENV_NAME --yes ipython-notebook
start-stop-daemon --start -b -d /vagrant/notebooks -u vagrant -x $MINICONDA_ENV_PATH/bin/ipython -- notebook --ip 0.0.0.0 --port 8888 --no-browser
