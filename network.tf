#Configuration du reseaux
resource "openstack_networking_network_v2" "network_bastion" {
  name           = var.network_bastion_name
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "subnet_bastion" {
  name       = var.subnet_bastion_name
  network_id = openstack_networking_network_v2.network_bastion.id
  cidr       = "10.0.10.0/24"
  ip_version = 4
}

resource "openstack_networking_network_v2" "network_apps" {
  name           = var.network_apps_name
  admin_state_up = "true"
}

resource "openstack_networking_subnet_v2" "subnet_apps" {
  name       = var.subnet_apps_name
  network_id = openstack_networking_network_v2.network_apps.id
  cidr       = "10.0.20.0/24"
  ip_version = 4
}
