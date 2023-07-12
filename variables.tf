# ------------------------------------------------------------------------------
# Variables
# ------------------------------------------------------------------------------
variable "name" {
  type        = string
  default     = ""
  description = "The name of the domain."
}
variable "ip_address" {
  type        = string
  default     = null
  description = "The IP address of the domain. If specified, this IP is used to created an initial A record for the domain."
}
