#!/bin/bash
source "/vagrant/scripts/common.sh"

# XGBoost requires special attention since it contains it's own python wrapper.
apt-get install -y build-essential python-dev libcurl4-openssl-dev git
sudo -u vagrant -H git clone https://github.com/dmlc/dmlc-core $DMLC_CORE_HOME
sudo -u vagrant -H git clone https://github.com/dmlc/xgboost.git $XGBOOST_HOME
sudo -u vagrant make -C $DMLC_CORE_HOME
sudo -u vagrant make -C $XGBOOST_HOME dmlc=$DMLC_CORE_HOME
