provider "digitalocean" {}

##------------------------------------------------
## Domain module call
##------------------------------------------------
module "domain" {
  source     = "./../../"
  name       = "test.example.com"
  ip_address = ""
}
