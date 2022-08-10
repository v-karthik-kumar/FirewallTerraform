#VPC

variable "aws_region" {
  default = "us-east-2"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "instance_tenancy" {
  default = "default"
}

variable "enable_dns_support" {
  default = "true"
}

variable "enable_dns_hostnames" {
  default = "true"
}

variable "enable_classiclink" {
  default = "false"
}

variable "vpc_id" {
  default = "aws_vpc.Firewall-vpc.id"
}

variable "availability_zone" {
  default = "us-east-2a"
}
#SUBNET

variable "public_subnets" {
  default = ["10.0.1.0/26", "10.0.2.0/24"]
}

variable "map_public_ip_on_launch" {
  default = "true"
}

variable "name_rule" {
  default = "CloudthatRuleGroup"
}

variable "type" {
  default = "STATEFUL"
}

variable "generated_rules_type" {
  default = "DENYLIST"
}

variable "target_types" {
  default = "HTTP_HOST"
}

variable "targets" {
  default = "www.cloudthat.com"
}

variable "Tag1_rule" {
  default = "CloudThatRuleGroup"
}

variable "name_policy" {
  default = "CloudThatNetworkPolicy"
}

variable "Tag1_policy" {
  default = "CloudThatNetworkPolicy"
}

variable "name_firewall" {
  default = "CloudthatNetworkFirewall"
}

variable "subnet_id" {
  default = "10.0.1.0/26"
}

variable "Tag1_firewall" {
  default = "CloudthatNetworkFirewall"
}


