dnf -y install https://www.elrepo.org/elrepo-release-9.el9.elrepo.noarch.rpm 
dnf config-manager --set-enabled elrepo-kernel
dnf -y install kernel-ml
#grub2-mkconfig -o /boot/grub2/grub.cfg
#grub2-set-default 0
echo "Grub update done."
mkdir -pm 700 /home/vagrant/.ssh
curl -sL https://raw.githubusercontent.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
chown -R vagrant:vagrant /home/vagrant/.ssh
echo "vagrant public key is installed"
reboot now