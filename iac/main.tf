terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = "dop_v1_f6c1ecacb5bcc318f35c40b5bd2a2242bad227a5002eb32cc03fc244521f6194"
}


resource "digitalocean_kubernetes_cluster" "k8s_iniciativa" {
  name    = "k8s-iniciativa"
  region  = "nyc1"
  version = "1.23.9-do.0"

  node_pool {
    name       = "default"
    size       = "s-2vcpu-2gb"
    node_count = 3
  }
}
