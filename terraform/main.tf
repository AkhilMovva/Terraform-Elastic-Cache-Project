module "network" {
    source = "./network"
    namespace = var.namespace
}

module "server" {
  source              = "./server"
  namespace           = var.namespace
  sg_id_in            = module.network.sg_id
  public_subnet_id_in = module.network.public_subnet_id
}

module "rds" {
  source                = "./rds"
  public_subnet_id_in   = module.network.public_subnet_id
  private2_subnet_id_in = module.network.private2_subnet_id
  sg_id_in              = module.network.sg_id
}

module "redis" {
  source                = "./redis"
  public_subnet_id_in   = module.network.public_subnet_id
  private1_subnet_id_in = module.network.private1_subnet_id
  sg_id_in              = module.network.sg_id
}
