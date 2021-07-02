Vagrant.configure("2") do |config|
  config.vm.define "node1" do |node1|
    node1.vm.box = "bento/ubuntu-20.04"
    node1.vm.network "private_network", ip: "172.72.72.10"
    node1.vm.provision  "shell", path: "./bootstrap.sh"
    node1.vm.provision  "file", 
      source: "./docker-compose.yml", destination: "docker-compose.yml"
    node1.vm.provision  "file", 
      source: "./backend.tar", destination: "./backend.tar"
    node1.vm.provision  "file", 
      source: "./frontend.tar", destination: "./frontend.tar"
  end

  config.vm.define "node2" do |node2|
    node2.vm.box = "bento/ubuntu-20.04"
    node2.vm.network "private_network", ip: "172.72.72.20"
    node2.vm.provision  "shell", path: "./bootstrap.sh"
  end

  config.vm.define "node3" do |node3|
    node3.vm.box = "bento/ubuntu-20.04"
    node3.vm.network "private_network", ip: "172.72.72.30"
    node3.vm.provision  "shell", path: "./bootstrap.sh"
  end

end
