module "Security" {
  source   = "app.terraform.io/PolarisInfra/Security/aws"
  version  = "1.0.0"
  vpc_id   = module.polarisnetwork.vpc_id
  vpc_name = module.polarisnetwork.vpc_name
}
