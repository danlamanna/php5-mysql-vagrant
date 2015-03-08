VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # prod box
  config.vm.define "prod" do |prod|
    prod.vm.box = "hashicorp/precise32"
    prod.vm.network "private_network", ip: "192.168.33.10"

    prod.vm.synced_folder "prod/", "/var/www/html",
                          owner: "vagrant",
                          group: "vagrant",
                          mount_options: ["dmode=775,fmode=664"]

    prod.vm.provision :shell, :path => "provision.sh"

    prod.vm.provision "ansible" do |ansible|
      ansible.playbook = "provision/playbook.yml"
    end
  end

  # dev box
  config.vm.define "dev" do |dev|
    dev.vm.box = "hashicorp/precise32"
    dev.vm.network "private_network", ip: "192.168.33.11"

    dev.vm.synced_folder "dev/", "/var/www/html",
                         owner: "vagrant",
                         group: "vagrant",
                         mount_options: ["dmode=775,fmode=664"]

    dev.vm.provision :shell, :path => "provision.sh"

    dev.vm.provision "ansible" do |ansible|
      ansible.playbook = "provision/playbook.yml"
    end
  end
end
