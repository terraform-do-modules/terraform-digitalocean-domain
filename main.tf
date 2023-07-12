##-------------------------------------------
## Provides a DigitalOcean domain resource.
##------------------------------------------
resource "digitalocean_domain" "main" {
  name       = var.name
  ip_address = var.ip_address
}
