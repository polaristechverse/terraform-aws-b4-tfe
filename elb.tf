module "elb" {
  source         = "app.terraform.io/PolarisInfra/elb/aws"
  version        = "1.0.0"
  env            = "Prod"
  tgname         = "PolarisProdTG"
  vpc_id         = module.polarisnetwork.vpc_id
  PrivateServers = module.PolarisInstance.privateInstaceId
  PublicServers  = module.PolarisInstance.publicinstanceId
  nlbname        = "polarisprodnlb"
  Public_subnets = module.polarisnetwork.PublicSubnet_Id
  sg_id          = module.PolarisSecurity.sg_id
}
