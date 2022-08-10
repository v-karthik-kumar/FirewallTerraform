module "Networking" {
  source                  = "./module/Networking"
  vpc_cidr                = var.vpc_cidr
  instance_tenancy        = var.instance_tenancy
  public_subnets          = var.public_subnets
  enable_dns_support      = var.enable_dns_support
  enable_dns_hostnames    = var.enable_dns_hostnames
  enable_classiclink      = var.enable_classiclink
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = var.availability_zone
}

module "Firewall" {
  source                  = "./module/Firewall"
  vpc_id                  = var.vpc_id
  name_rule               = var.name_rule
  type                    = var.type
  generated_rules_type    = var.generated_rules_type
  target_types            = var.target_types 
  targets                 = var.targets
  Tag1_rule               = var.Tag1_rule
  name_policy             = var.name_policy
  Tag1_policy             = var.Tag1_policy
  name_firewall           = var.name_firewall
  subnet_id               = var.subnet_id
  Tag1_firewall           = var.Tag1_firewall
}


/*
module "Capstone-subnet" {
  source                  = "./module/Networking"
  vpc_id                  = module.Firewall-vpc.vpc_id
  subnet_cidr             = var.public_subnets
  map_public_ip_on_launch = var.map_public_ip_on_launch
  availability_zone       = var.availability_zone
}


module "Capstone-instance" {
  source           = "../project/module/ec2"
  aws_region       = var.aws_region
  ami              = var.ami
  instance_type    = var.instance_type
  subnet_id        = module.Capstone-subnet.subnet_id
  securityGroup_id = module.Capstone-sg.securityGroup_id
  key_name         = var.key_name
}

module "Capstone-sg" {
  source       = "../project/module/securityGroup"
  vpc_id       = module.Capstone-vpc.vpc_id
  from_port-01 = var.from_port-01
  to_port-01   = var.to_port-01
  from_port-02 = var.from_port-02
  to_port-02   = var.to_port-02
  from_port-03 = var.from_port-03
  to_port-03   = var.to_port-03
  from_port-04 = var.from_port-04
  to_port-04   = var.to_port-04
  from_port-05 = var.from_port-05
  to_port-05   = var.to_port-05
  from_port-06 = var.from_port-06
  to_port-06   = var.to_port-06
  from_port-07 = var.from_port-07
  to_port-07   = var.to_port-07
  from_port-08 = var.from_port-08
  to_port-08   = var.to_port-08
  from_port-09 = var.from_port-09
  to_port-09   = var.to_port-09
  from_port-10 = var.from_port-10
  to_port-10   = var.to_port-10
  name         = var.name
  protocol     = var.protocol

}

module "Capstone-keypair" {
  source     = "../project/module/keyPair"
  key_name   = var.key_name
  public_key = file(var.path_to_public_key)
}

module "Capstone-autoscaling" {
  source             = "../project/module/autoScaling"
  subnet_id          = module.Capstone-subnet.subnet_id
  min_size-1         = var.min_size-1
  max_size-1         = var.max_size-1
  desired_capacity-1 = var.desired_capacity-2
  desired_capacity-2 = var.desired_capacity-2
  min_size-2         = var.min_size-2
  max_size-2         = var.max_size-2
  key_name           = var.key_name
  securityGroup_id   = module.Capstone-sg.securityGroup_id
}
*/
