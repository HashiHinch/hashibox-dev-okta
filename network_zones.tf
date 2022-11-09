## Network Zones

resource "okta_network_zone" "Homelab" {
  name     = "Homelab"
  type     = "IP"
  gateways = ["86.185.250.157/24"]

}

resource "okta_network_zone" "Farringdon" {
  name     = "Farrindgon"
  type     = "IP"
  gateways = ["87.175.250.157/24"]

}

resource "okta_network_zone" "Manchester" {
  name     = "Manchester"
  type     = "IP"
  gateways = ["82.15.50.15/24"]

}