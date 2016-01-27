Vagrant.configure("2") do |config|
  config.vm.define "rt0" do |server|
    server.vm.box = "tmatilai/openbsd-5.7"

    # for outside world
    server.vm.network "private_network", ip: "10.10.0.1", netmask: "255.255.255.0"
    # for inside world
    server.vm.network "private_network", ip: "172.16.0.1", netmask: "255.255.255.0"

    # do basic setup
    server.vm.provision "shell", path: "basic-setup.sh"

    # run native bgpd
    server.vm.provision "shell", path: "native-bgpd.sh", args: "0"
  end

  config.vm.define "rt1" do |server|
    server.vm.box = "tmatilai/openbsd-5.7"

    # for outside world
    server.vm.network "private_network", ip: "10.10.0.10", netmask: "255.255.255.0"

    # for inside world
    server.vm.network "private_network", ip: "172.16.10.1", netmask: "255.255.255.0"

    # do basic setup
    server.vm.provision "shell", path: "basic-setup.sh"

    # run native bgpd
    server.vm.provision "shell", path: "native-bgpd.sh", args: "1"
  end

  config.vm.define "rt2" do |server|
    server.vm.box = "tmatilai/openbsd-5.7"

    # for outside world
    server.vm.network "private_network", ip: "10.10.0.20", netmask: "255.255.255.0"

    # for inside world
    server.vm.network "private_network", ip: "172.16.20.1", netmask: "255.255.255.0"

    # do basic setup
    server.vm.provision "shell", path: "basic-setup.sh"

    # run native bgpd
    server.vm.provision "shell", path: "native-bgpd.sh", args: "2"
  end

end
