#Configuration des ip floatantes
resource "openstack_networking_floatingip_v2" "floatip_bastion" {
  pool     = "ext-net"
  for_each = var.compute_bastion
}

resource "openstack_compute_floatingip_associate_v2" "associate_floatip_bastion" {
  for_each    = var.compute_bastion
  floating_ip = openstack_networking_floatingip_v2.floatip_bastion[each.key].address
  instance_id = openstack_compute_instance_v2.compute_bastion[each.key].id
}

#Configuration de l'adresse ip floattante pour le LB
resource "openstack_networking_floatingip_v2" "floatip_lb" {
  pool = "ext-net"
}

resource "openstack_networking_floatingip_associate_v2" "associate_floatip_lb" {
  floating_ip = openstack_networking_floatingip_v2.floatip_lb.address
  port_id     = openstack_lb_loadbalancer_v2.lb_apps.vip_port_id
}