provider "digitalocean" {}

##------------------------------------------------
## Domain module call
##------------------------------------------------
module "domain" {
  source = "./../../"
  name   = "demo.hello.cam"

  records = {
    record1 = {
      type  = "A"
      name  = "test"
      value = "192.168.0.12"
    },
    record2 = {
      type  = "A"
      name  = "demo2"
      value = "192.168.0.13"
    },
  }

}
