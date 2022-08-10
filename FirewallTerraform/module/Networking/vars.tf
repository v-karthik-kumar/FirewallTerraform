
variable "public_subnets" {
}

variable "map_public_ip_on_launch" {
}

variable "availability_zone" {
}

variable "vpc_id" {
  type = string
  default = ""
}
variable "vpc_cidr" {
}

variable "instance_tenancy" {
}

variable "enable_dns_support" {
}

variable "enable_dns_hostnames" {
}

variable "enable_classiclink" {
}

variable "endpoint_id"{

}
