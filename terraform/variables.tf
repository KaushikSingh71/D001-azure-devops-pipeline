variable "resource_group_name" {
  default = "rg-d001-devops"
}

variable "location" {
  default = "Central India"
}

variable "acr_name" {
  default = "d001acr001"
}

variable "aks_name" {
  default = "d001-aks"
}

variable "node_count" {
  default = 2
}

variable "vm_size" {
  default = "Standard_B2s"
}
