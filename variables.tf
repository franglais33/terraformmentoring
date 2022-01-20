variable "name" {
  type        = string
  description = "Name of the desired resourcegroup"
  default     = "myResourceGroup"
}
variable "location" {}
variable "Storage_Account_Name" {
  default = "tftestmentoring1"
}

variable "subnetfirstcidr" {
  default = "10.1.1.0/24"
}




