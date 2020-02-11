
#cd packer_templates/ubuntu
#c:/software/packer build -only=virtualbox-iso ubuntu-18.04-amd64.json

#VAGRANT_HOME="D:/vagrant.d" vagrant box add huiwq/ubuntu18 builds/centos-7.7.virtualbox.box
#VAGRANT_HOME="D:/vagrant.d" vagrant init huiwq/centos7
#VAGRANT_HOME="D:/vagrant.d" vagrant up


cd packer_templates/centos
d:/software/packer build -only=virtualbox-iso centos-7.7-x86_64.json

VAGRANT_HOME="D:/vagrant.d" vagrant box add huiwq/centos7 builds/centos-7.7.virtualbox.box --force
