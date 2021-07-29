resource "openstack_compute_secgroup_v2" "secgroup_bastion" {
  name        = var.secgroup_bastion_name
  description = "GROUPE DE SECURITE BASTION"
}

resource "openstack_networking_secgroup_rule_v2" "all_ssh" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_compute_secgroup_v2.secgroup_bastion.id
}

resource "openstack_networking_secgroup_rule_v2" "icmp-bastion" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  port_range_min    = 0
  port_range_max    = 0
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_compute_secgroup_v2.secgroup_bastion.id
}

resource "openstack_compute_secgroup_v2" "secgroup_apps" {
  name        = var.secgroup_apps_name
  description = "GROUPE DE SECURITE APPS"
}
resource "openstack_networking_secgroup_rule_v2" "icmp-apps" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "icmp"
  port_range_min    = 0
  port_range_max    = 0
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_compute_secgroup_v2.secgroup_apps.id
}

resource "openstack_networking_secgroup_rule_v2" "ssh-apps" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 22
  port_range_max    = 22
  remote_group_id   = openstack_compute_secgroup_v2.secgroup_bastion.id
  security_group_id = openstack_compute_secgroup_v2.secgroup_apps.id
}

resource "openstack_networking_secgroup_rule_v2" "all_https" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 443
  port_range_max    = 443
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_compute_secgroup_v2.secgroup_apps.id
}

resource "openstack_networking_secgroup_rule_v2" "all_http" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 80
  port_range_max    = 80
  remote_ip_prefix  = "0.0.0.0/0"
  security_group_id = openstack_compute_secgroup_v2.secgroup_apps.id
}

resource "openstack_networking_secgroup_rule_v2" "lb_apps" {
  direction         = "ingress"
  ethertype         = "IPv4"
  protocol          = "tcp"
  port_range_min    = 1
  port_range_max    = 65535
  remote_ip_prefix  = "10.0.20.0/0"
  security_group_id = openstack_compute_secgroup_v2.secgroup_apps.id
}
