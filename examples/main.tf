resource "cidr-reservation-network-request" "network-request" {
  provider      = cidr-reservation
  prefix_length = 24
  base_cidr     = "10.5.0.0/16"
  netmask_id    = "lulut"
}

resource "cidr-reservation-network-request" "network-request2" {
  provider      = cidr-reservation
  prefix_length = 26
  base_cidr     = "10.5.0.0/16"
  netmask_id    = "lappen"
}
//
resource "cidr-reservation-network-request" "network-request3" {
  provider      = cidr-reservation
  prefix_length = 26
  base_cidr     = "10.5.0.0/16"
  netmask_id    = "test"
}
resource "cidr-reservation-network-request" "network-request4" {
  provider      = cidr-reservation
  prefix_length = 24
  base_cidr     = "10.5.0.0/16"
  netmask_id    = "neu"
}
resource "cidr-reservation-network-request" "network-request5" {
  provider      = cidr-reservation
  prefix_length = 26
  base_cidr     = "10.5.0.0/16"
  netmask_id    = "neu26"
}
resource "cidr-reservation-network-request" "network-request6" {
  provider      = cidr-reservation
  prefix_length = 28
  base_cidr     = "10.5.0.0/16"
  netmask_id    = "neu28"
}