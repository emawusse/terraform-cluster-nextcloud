# Terraform-Cluster-Nextcloud
# Provider Openstack

Ce projet est le déploiement d'une infrastructure dans un environnement openstack. L'architecture est composée d'un 1 noeud bastion et de 3 serveurs d'application formant un cluster swarm. Les noeuds applicatifs comportent également des volumes rattachés (disk) pour faire du pool de stockage si besoin.

## Pre-requis

* Environnement Openstack
* Mettre Octavia sur la valeur "true" dans le fichier provider pour l'approvisionnement du loadbalancer
* Définir le fichier comportant sa clé public pour l'injecter lors du déploiement (exemple : key.pub)

## Comment utilisé les fichiers ?

Vous devez cloner le projet : git clone https://github.com/enassar225/terraform-cluster-nextcloud-openstack.git puis creer un fichier terraform.tfvars pour y mettre vos variables lors du déploiement de l'infra.
