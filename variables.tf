variable "name" {}
variable "location" {}

#variable "region" {
# description = "Azure Region."
# type        = string
#default     = "West Europe"
#}

#variable "ResourceGroup" {
# default = "myResourceGroup"
#}

variable "Storage_Account_Name" {
  default = "tftestmentoring1"
}

variable "subnetfirstcidr" {
  default = "10.1.1.0/24"
}

#variable "Storage" {}
