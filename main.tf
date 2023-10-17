terraform {
  backend "s3" {}
}

variable "root_url" {
  type    = string
  default = null
}

variable "domain_prefix" {
  type    = string
  default = null
}

variable "domain_suffix" {
  type    = string
  default = null
}


output "ROOT_URL" {
  value = var.root_url != null ? var.root_url : "https://${var.domain_prefix}.${var.domain_suffix}"
}
