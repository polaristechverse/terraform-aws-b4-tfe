module "Nat" {
  source          = "app.terraform.io/PolarisInfra/Nat/aws"
  version         = "1.0.0"
  env             = module.polarisnetwork.env
  Public_Subnet_1 = module.polarisnetwork.PublicSubnet_Id_1
  vpc_name        = module.polarisnetwork.vpc_name
}
