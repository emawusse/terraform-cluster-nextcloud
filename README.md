# Terraform-Nextcloud-Cluster-Swarm
# Provider Openstack

Ce projet est le déploiement d'une infrastructure dans un environnement openstack. L'architecture est composée d'un 1 noeud bastion et de 3 serveurs d'application formant un cluster swarm. Les noeuds applicatifs comportent également des volumes rattachés (disk) pour faire du pool de stockage si besoin.

## Pre-requis

* Environnement Openstack
* Mettre Octavia sur la valeur "true" dans le fichier provider pour l'approvisionnement du loadbalancer
* Définir le fichier comportant sa clé public pour l'injecter lors du déploiement (exemple : key.pub)

## Comment utilisé les fichiers ?

Vous devez cloner le projet : git clone https://github.com/enassar225/terraform-cluster-swarm-openstack.git puis creer un fichier terraform.tfvars pour y mettre vos variables lors du déploiement de l'infra.

Exemple du fichier terraform.tfvars :

- compute_bastion = { "SRV-BASTION" = "6" }
- compute_apps = {
  "SRV-APPS-1" = "085d97f4", #Nom du serveur et Id du flavor
  "SRV-APPS-2" = "085d97f4", #Nom du serveur et Id du flavor
  "SRV-APPS-3" = "085d97f4" #Nom du serveur et Id du flavor
}

- image_id     = "dcdc0e75" #Id de l'image
- key_name     = "LINKEDIN-KEY"
- storage = { 
  "SRV-APPS-1" = "50", #Nom & taille du volume rattache. 
  "SRV-APPS-2" = "50", #Nom & taille du volume rattache
  "SRV-APPS-3" = "50" #Nom & taille du volume rattache
}

#Secgroup
- secgroup_bastion_name = "GROUPE DE SECURITE BASTION"
- secgroup_apps_name    = "GROUPE DE SECURITE APPS"

#Network
- network_bastion_name = "NET-BASTION"
- subnet_bastion_name  = "SUBNET-BASTION"
- network_apps_name    = "NET-APPS"
- subnet_apps_name     = "SUBNET-APPS"
- router_name          = "ROUTER"

#Loadbalancer
- loadbalancer_apps_name = "LB-APPS"
