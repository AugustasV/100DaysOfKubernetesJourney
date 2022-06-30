# main.tf
# Configure the Digital Ocean Provider
terraform {
  required_providers {
    vultr = {
      source  = "vultr/vultr"
      version = "2.10.1"
    }
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "1.33.1"
    }
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.19.0"
    }
    rke = {
      source = "rancher/rke"
      version = "1.3.0"
    }
  }
}

provider "hcloud" {
  token = var.hetzner_token
}
provider "digitalocean" {
  token = var.digitalocean_token
}

# Configure the Vultr Provider
provider "vultr" {
  api_key     = var.vultr_token
  rate_limit  = 700
  retry_limit = 3
}

#  Resources
## Create a new ssh key
resource "digitalocean_ssh_key" "default" {
  name       = "my-ssh-key"
  public_key = file("~/.ssh/id_ed25519.pub")
}

resource "vultr_ssh_key" "default" {
  name    = "my-ssh-key"
  ssh_key = file("~/.ssh/id_ed25519.pub")
}
## Create a new Digital Ocean Droplet using the SSH key
resource "digitalocean_droplet" "node1" {
  name      = "node1"
  hostname  = "node1"
  region    = "ams3"
  image     = "ubuntu-20-04-x64"
  size      = "s-1vcpu-1gb"
  user_data = file("init")
  ssh_keys  = [digitalocean_ssh_key.default.fingerprint]
}

## Create a new Vultr VM using the SSH key
resource "vultr_instance" "node2" {
  plan        = "vc2-1c-1gb"
  region      = "sea"
  os_id       = 167
  label       = "node2"
  tag         = "node2"
  hostname    = "node2"
  user_data   = file("init")
  enable_ipv6 = false
  ssh_key_ids  = [vultr_ssh_key.default.ssh_key]
}

## Create a new hetzner VM using the SSH key
resource "hcloud_server" "node1" {
  name        = "node3"
  region      = "fsn1-dc8"
  image       = "ubuntu-20.04"
  server_type = "cx11"
  user_data   = file("init")
  hostname    = "node3"
}
