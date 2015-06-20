# CrowdFlower

This is a virtual machine to do word2vec machine learning of the CrowdFlower Kaggle competition.

## Instructions

1. Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and [Vagrant](https://www.vagrantup.com/downloads.html)

1. Create a `kaggle.yml` file in this directory:

        UserName: username
        Password: password

   This allows the scripts to download the competition data files. _Note_: you must have first already tried to download
   the files for the competition and agreed to the terms. Once you agree, then the script can download the files correctly.

2. Edit the `Vagrantfile` in this directory and make sure the specified number of cpus is less than or equal to the number of cpus you have
and that the memory is less than the amount of free memory you have. If you have another service running on port 8888,
change the port in this file to an unused port.

3. Run `vagrant up` and wait for the virtual machine to install and boot. The first time will take a while to download
and install the required software.

4. In your web browser, go to http://localhost:8888/
