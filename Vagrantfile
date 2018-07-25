VAGRANT_VERSION = 2

Vagrant.configure(VAGRANT_VERSION) do |config|

	config.vm.define "odoo" do |odoo|
		odoo.vm.synced_folder "../addons", "/home/vagrant/addons"

		odoo.vm.box = "debian/stretch64"

		odoo.vm.host_name = "odoo-dev"

		odoo.vm.provider "virtualbox" do |vb|
			vb.customize ["modifyvm", :id, "--memory", "2048"]
			vb.customize ["modifyvm", :id, "--name", "odoo-dev" ]
		end

		odoo.vm.network :forwarded_port, guest: 8069, host: 8069
	end

	# stupid fix for a stupid error
	config.ssh.shell = "bash -c 'BASH_ENV=/etc/profile exec bash'"

	config.vm.provision "shell", path: "script.sh"
end
