#Instances du projet
compute_bastion = { "SRV-BASTION" = "id du flavor de votre compute à renseigner" }

compute_apps = {
  "SRV-APPS-1" = "3",
  "SRV-APPS-2" = "3",
  "SRV-APPS-3" = "3"
}

image_id     = "11b4ac46-74da-4e67-9ebd-5bf22a91d1f8"
key_name     = "POC-KEY"
storage = { 
  "SRV-APPS-1" = "20",
  "SRV-APPS-2" = "20",
  "SRV-APPS-3" = "20"
}

#Secgroup
secgroup_bastion_name = "GROUPE DE SECURITE BASTION"
secgroup_apps_name    = "GROUPE DE SECURITE APPS"

#Network
network_bastion_name = "NET-BASTION"
subnet_bastion_name  = "SUBNET-BASTION"
network_apps_name    = "NET-APPS"
subnet_apps_name     = "SUBNET-APPS"
router_name          = "ROUTER"

#Loadbalancer
loadbalancer_apps_name = "LB-APPS"
