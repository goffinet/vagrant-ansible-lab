#!/bin/bash
if [[ ! $UID == 0 ]] ; then echo "you must be root" ; exit ; fi
#!/bin/bash
if [[ -f /etc/redhat-release ]] ; then
yum -y install epel-release && yum -y install ansible git
fi
if [[ -f /etc/lsb-release ]] ; then
apt-get update && \
apt-get upgrade --yes --force-yes -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" && \
apt-get -y install python3-pip && \
pip3 install --upgrade pip && \
pip3 install ansible && \
apt-get -y install sshpass git && \
echo "PATH=$HOME/.local/bin:$PATH" >> ~/.profile && \
export PATH=$HOME/.local/bin:$PATH
fi
ansible-playbook setup.yml -v
