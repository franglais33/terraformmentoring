variable "location" {
    type = string
    default = "West Europe"
}
variable "name" {
    type = string
    default = "myTFVnet"
}

variable "subnetfirstcidr" {
    default = "10.1.1.0/24"
}

#variable "vnet_name" {
 #   type = string
  #  default = "myTFVnet"
#}