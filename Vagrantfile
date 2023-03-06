# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure(2) do |config|
  # образ системы Rocky 9.1 с ядром 6.x и VBoxGuestAdditions
  config.vm.box = "kgeor/rocky9-kernel6"
  config.vm.synced_folder ".", "/vagrant"
  config.vm.provider "virtualbox" do |vb|
    # имя виртуальной машины
    vb.name = "rocky9-kernel6"
    # объем оперативной памяти
    vb.memory = 2048
    # количество ядер процессора
    vb.cpus = 2
  end
  # hostname виртуальной машины
  config.vm.hostname = "rocky9-kernel6"
end