module "Instance" {
  source  = "app.terraform.io/PolarisInfra/Instance/aws"
  version = "1.0.0"
  env     = "Prod"
  ami = {
    us-east-1  = "ami-0b6c6ebed2801a5cb"
    ap-south-1 = "ami-019715e0d74f695be"
  }
  region = var.region
  key_name = {
    us-east-1  = "Desktop_key"
    ap-south-1 = "Desktop_key"
  }
  instance_type  = "t2.micro"
  public_subnet  = module.Network.PublicSubnet_Id
  private_subnet = module.Network.PrivateSubnet_Id
  sg_id          = module.Security.sg_id
  vpc_name       = module.Network.vpc_name
  depends_on     = [module.Network]
}
