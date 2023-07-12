# ------------------------------------------------------------------------------
# Outputs
# ------------------------------------------------------------------------------
output "id" {
  value       = join("", digitalocean_domain.main[*].id)
  description = " The name of the domain."
}
output "urn" {
  value       = join("", digitalocean_domain.main[*].urn)
  description = "The uniform resource name of the domain."
}
output "ttl" {
  value       = join("", digitalocean_domain.main[*].ttl)
  description = "The TTL value of the domain."
}
