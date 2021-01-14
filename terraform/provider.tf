terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.3.0"
    }
  }
}

variable "api_token" {}

variable "ssh_fingerprint" {}

variable "pvt_key" {}

variable "pub_key" {}

