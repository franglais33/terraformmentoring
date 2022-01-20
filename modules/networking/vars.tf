variable "location" {
    type = string
    default = "West Europe"
}
variable "vnet_name" {
    type = string
    default = "myTFVnet"
}

variable "subnetfirstcidr" {
    default = "10.1.1.0/24"
}

#variable "name" {
 # type        = string
 # description = "Name of the desired resourcegroup"

 # validation {
 #   condition     = var.name != null
 #   error_message = "No resourcegroup will be created."
 # }
#}

variable "name" {}
