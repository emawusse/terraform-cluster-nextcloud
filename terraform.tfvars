#Instances du projet
compute_bastion = { "SRV-BASTION" = "6" }

compute_apps = {
  "SRV-APPS-1" = "085d97f4-19b3-4b52-b8d8-347e061fe6f0",
  "SRV-APPS-2" = "085d97f4-19b3-4b52-b8d8-347e061fe6f0",
  "SRV-APPS-3" = "085d97f4-19b3-4b52-b8d8-347e061fe6f0"
}

image_id     = "dcdc0e75-f494-402e-8d04-33d0f08b5bd0"
key_name     = "LINKEDIN-KEY"
file_storage = { 
  "SRV-APPS-1" = "50",
  "SRV-APPS-2" = "50",
  "SRV-APPS-3" = "50"
}

#Secgroup
secgroup_bastion_name = "GROUPE DE SECURITE BASTION"
secgroup_apps_name    = "GROUPE DE SECURITE APPS"
secgroup_acronis_name = "GROUPE DE SECURITE ACRONIS"


#Network
network_bastion_name = "NET-BASTION"
subnet_bastion_name  = "SUBNET-BASTION"
network_apps_name    = "NET-APPS"
subnet_apps_name     = "SUBNET-APPS"
router_name          = "ROUTER"

#Loadbalancer
loadbalancer_apps_name = "LB-APPS"
