# Create Docker Compose file
resource "local_file" "docker-configure" {
  depends_on = [
    digitalocean_record.api,
    digitalocean_record.www
  ]

  content = templatefile("../Docker/backend/docker-compose.yml.tmpl",
    {
      api-fqdn = digitalocean_record.api.fqdn
      www-fqdn = digitalocean_record.www.fqdn
      www-domain = digitalocean_record.www.domain
    }
  )
  filename = "../Docker/backend/docker-compose.yml"
}
