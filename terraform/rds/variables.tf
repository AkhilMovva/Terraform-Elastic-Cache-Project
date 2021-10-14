variable "public_subnet_id_in" {}

variable "private2_subnet_id_in" {}

variable "username" {
  type    = string
  default = "postgres"
}

variable "sg_id_in" {}