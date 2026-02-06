module "elb" {
  source         = "app.terraform.io/PolarisInfra/elb/aws"
  version        = "1.0.0"
  env            = "Prod"
  tgname         = "PolarisProdTG"
  vpc_id         = module.Network.vpc_id
  PrivateServers = module.Instance.privateInstaceId
  PublicServers  = module.Instance.publicinstanceId
  nlbname        = "polarisprodnlb"
  Public_subnets = module.Network.PublicSubnet_Id
  sg_id          = module.Security.sg_id
}
