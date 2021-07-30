#Instances du projet
compute_bastion = { "SRV-BASTION" = "id du flavor de votre compute à renseigner" }

compute_apps = {
  "SRV-APPS-1" = "id du flavor de votre compute à renseigner",
  "SRV-APPS-2" = "id du flavor de votre compute à renseigner",
  "SRV-APPS-3" = "id du flavor de votre compute à renseigner"
}

image_id     = "id de votre image",
key_name     = "nom de votre clé"
storage = { 
  "SRV-APPS-1" = "taille de votre volume",
  "SRV-APPS-2" = "taille de votre volume",
  "SRV-APPS-3" = "taille de votre volume"
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
