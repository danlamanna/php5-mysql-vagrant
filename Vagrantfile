VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.network "private_network", ip: "192.168.33.10"

  config.ssh.forward_agent = true

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.synced_folder "public/", "/var/www/html",
  owner: "vagrant",
  group: "vagrant",
  mount_options: ["dmode=775,fmode=664"]

  config.vm.provision :shell, :path => "provision.sh"

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = "provision/playbook.yml"
  end
end
