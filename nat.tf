module "Nat" {
  source          = "app.terraform.io/PolarisInfra/Nat/aws"
  version         = "1.0.0"
  env             = module.Network.env
  Public_Subnet_1 = module.Network.PublicSubnet_Id_1
  vpc_name        = module.Network.vpc_name
}
