#!/usr/bin/env bash
# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
VM_MEMORY = "1024"
VM_CPUS = "2"
IPYTHON_HOST_PORT = 8888

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"
    config.vm.provider "virtualbox" do |vb|
        vb.memory = VM_MEMORY
        vb.cpus = VM_CPUS
    end
    config.vm.network "private_network", ip: "192.168.51.10"
    config.vm.network "forwarded_port", guest: 8888, host: IPYTHON_HOST_PORT
    config.vm.provision "shell", path: "scripts/setup-xgboost.sh"
    config.vm.provision "shell", path: "scripts/setup-miniconda.sh"
    config.vm.provision "shell", path: "scripts/update-miniconda-env.sh", run: "always"
    config.vm.provision "shell", path: "scripts/ipython-notebook.sh", run: "always"
end
