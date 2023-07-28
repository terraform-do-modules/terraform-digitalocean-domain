##-------------------------------------------
## Provides a DigitalOcean domain resource.
##------------------------------------------
resource "digitalocean_domain" "main" {
  count      = var.enabled ? 1 : 0
  name       = var.name
  ip_address = var.ip_address
}

##---------------------------------------------
## Provides a DigitalOcean DNS record resource.
##---------------------------------------------
resource "digitalocean_record" "main" {
  for_each = var.enabled ? var.records : {}
  domain   = join("", digitalocean_domain.main[*].id)
  type     = lookup(each.value, "type", "A")
  name     = lookup(each.value, "name", "test")
  value    = lookup(each.value, "value", null)
  port     = each.value.type == "SRV" ? lookup(each.value, "port", 22) : null
  priority = each.value.type == "MX" || each.value.type == "SRV" ? lookup(each.value, "priority", 1) : null
  weight   = each.value.type == "SRV" ? lookup(each.value, "weight", 10) : 0
  ttl      = lookup(each.value, "ttl", 1800)
  flags    = each.value.type == "CAA" ? lookup(each.value, "flags", 10) : null
  tag      = each.value.type == "CAA" ? lookup(each.value, "tag", "issue") : null
}
