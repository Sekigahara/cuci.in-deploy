
# Create Ansible Inventory file
resource "local_file" "ansible-inventory" {
  depends_on = [digitalocean_droplet.cuci_in]

  content = templatefile("../ansible/inventory.tmpl",
    {
      dbserver-ip = digitalocean_droplet.cuci_in.ipv4_address
      dbserver-name = digitalocean_droplet.cuci_in.name
      webserver-ip = digitalocean_droplet.cuci_in.ipv4_address
      webserver-name = digitalocean_droplet.cuci_in.name
    }
  )
  filename = "../ansible/inventory"
}