module "Network" {
  source             = "app.terraform.io/PolarisInfra/Network/aws"
  version            = "1.0.0"
  vpc_name           = "PolarisProd"
  vpc_cidr           = "10.20.0.0/16"
  env                = "Prod"
  PublicSubnet_Cidr  = ["10.20.1.0/24", "10.20.2.0/24", "10.20.3.0/24"]
  PrivateSubnet_Cidr = ["10.20.10.0/24", "10.20.20.0/24", "10.20.30.0/24"]
  az                 = ["us-east-1a", "us-east-1b", "us-east-1c"]
  NGW                = module.PolarisNAT.ngw_id
}
