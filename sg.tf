module "Security" {
  source   = "app.terraform.io/PolarisInfra/Security/aws"
  version  = "1.0.0"
  vpc_id   = module.Network.vpc_id
  vpc_name = module.Network.vpc_name
}
