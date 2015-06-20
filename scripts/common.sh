#!/bin/bash
function miniconda_environment_name {
python - <<END
import yaml
print yaml.load(open('/vagrant/environment.yml').read())['name']
END
}
MINICONDA_PATH=/home/vagrant/miniconda
MINICONDA_ENV_NAME=$(miniconda_environment_name)
MINICONDA_ENV_PATH=/home/vagrant/miniconda/envs/${MINICONDA_ENV_NAME}
MINICONDA_ENV_FILE=/vagrant/environment.yml
DMLC_CORE_HOME=/home/vagrant/dmlc-core
XGBOOST_HOME=/home/vagrant/xgboost
