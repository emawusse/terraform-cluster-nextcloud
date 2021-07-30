#Configuration des volumes rattachés aux instances pour le pool de stockage
resource "openstack_blockstorage_volume_v2" "storage" {
  for_each = var.storage
  name     = each.key
  size     = each.value
}

resource "openstack_compute_volume_attach_v2" "attach_storage" {
  for_each    = var.storage
  instance_id = openstack_compute_instance_v2.compute_apps[each.key].id
  volume_id   = openstack_blockstorage_volume_v2.storage[each.key].id
}