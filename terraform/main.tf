module "networking" {
  source = "./modules/networking"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}

module "compute" {
  source = "./modules/compute"

  ami_id               = var.ami_id
  instance_type        = var.instance_type
  key_name             = var.key_name
  vpc_id               = module.networking.vpc_id
  public_subnet_id     = module.networking.public_subnet_id
  private_subnet_id    = module.networking.private_subnet_id
  iam_instance_profile = module.iam.instance_profile_name
}

module "iam" {
  source = "./modules/iam"

  project_name = var.project_name
}