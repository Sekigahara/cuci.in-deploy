# Configure DNS
resource "digitalocean_domain" "cuci_in-domain" {
  name = "cuci_in.me"
  ip_address = digitalocean_droplet.cuci_in.ipv4_address
}

# Configure DNS Records (www, api, and monitor)
resource "digitalocean_record" "www" {
  domain = digitalocean_domain.cuci_in-domain.name
  type = "A"
  name = "www"
  value = digitalocean_domain.cuci_in-domain.ip_address
}

resource "digitalocean_record" "api" {
  domain = digitalocean_domain.cuci_in-domain.name
  type = "A"
  name = "api"
  value = digitalocean_domain.cuci_in-domain.ip_address
}