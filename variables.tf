#tags for root directory
variable "location" {
  type = string
}

variable "env" {
  type = string
}
variable "resource_group_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "subnets" {

}

variable "address_space" {
  type = list(string)
}

/*variable "tags" {
  type = map(string)
}*/