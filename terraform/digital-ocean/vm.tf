variable "region" {
  description = "Region"
  default = "ams3"
}

variable "droplet_name" {
  description = "Just a name of a VM"
  default = "VPN"
}

variable "droplet_image" {
  description = "OS to use"
  default = "ubuntu-18-04-x64"
}

variable "droplet_size" {
  description = "VM stats"
  default = "s-1vcpu-1gb"
}

variable "ssh_public_key" {
  description = "Local public ssh key"
  default = "~/.ssh/vpn-nl.pub"
}
