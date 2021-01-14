provider "digitalocean" {
    token = var.api_token
}

//create droplet
resource "digitalocean_droplet" "cuci_in" {
  image              = "ubuntu-20-04-x64"
  name               = "cuci-in"
  region             = "sgp1"
  size               = "s-1vcpu-1gb"
  monitoring         = "true"
  ipv6               = "true"
  private_networking = "true"
  ssh_keys           = [var.ssh_fingerprint]

  provisioner "remote-exec" {
    connection {
      user = "root"
      type = "ssh"
      private_key = file(var.pvt_key)
      host = digitalocean_droplet.cuci_in.ipv4_address
      timeout = "2m"
    }

    inline = [
        #install nginx
        "sudo apt-get update",
        "sudo apt-get -y install nginx"
    ]
  }
}

# resource "digitalocean_droplet" "cuci_in-domain" {
#     name               = "cuciin.com"
#     ipaddress          = digitalocean_droplet.cuci_in.ipv4_address
# }

# resource "digitalocean_record" "cuci_in-domain" {
#     name               = "cuciincom"
#     type               = "A"
#     domain             = digitalocean_droplet.cuci_in-domain.name
# }

# resource "null_resource" "ansible-provision" {
#   depends_on = [digitalocean_droplet.cuci_in]

#   provisioner "local-exec" {
#     command = "echo '${digitalocean_droplet.cuci_in.name} ansible_host=${digitalocean_droplet.cuci_in.ipv4_address} ansible_ssh_user=root ansible_python_interpreter=/usr/bin/python3' > ../ansible/inventory"
#   } 
# }

output "ip" {
    value = digitalocean_droplet.cuci_in.ipv4_address
}