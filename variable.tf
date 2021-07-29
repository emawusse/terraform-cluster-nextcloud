#Swarm Noeuds
variable "compute_bastion" {
  default = []
}

variable "compute_apps" {
  default = []
}

variable "image_id" {
  default = []
}

variable "key_name" {
  default = []
}

#Network
variable "network_bastion_name" {
  default = []
}

variable "subnet_bastion_name" {
  default = []
}

variable "network_apps_name" {
  default = []
}

variable "subnet_apps_name" {
  default = []
}

#Router
variable "router_name" {
  default = []
}

#Secgroup
variable "secgroup_bastion_name" {
  default = []
}

variable "secgroup_apps_name" {
  default = []
}

variable "secgroup_acronis_name" {
  default = []
}

#Loadbalancer
variable "loadbalancer_apps_name" {
  default = []
}

variable "loadbalancer_bd_name" {
  default = []
}

variable "storage" {
  default = []
}
