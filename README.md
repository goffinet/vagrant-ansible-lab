# Vagrant Ansible Lab

The `setup.sh` Bash script install Ansible on a virtualization server running with Centos 8 or Ubuntu Focal and launch the `setup.yml` Ansible playbook that install and configure Virtualbox, Vagrant and Packer.


```bash
yum -y install git || apt -y install git
git clone --recursive https://github.com/goffinet/vagrant-ansible-lab.git
cd vagrant-ansible-lab
./setup.sh
```

The `./lab` folder contain this lab managed by the virtualization server as Ansible controller.

```
cd lab
vagrant up
ansible -m ping all
```

![](https://lucid.app/publicSegments/view/9175d49c-c39c-4446-b245-b9e6829dc57a/image.png)
