# Create VPC from module
module "vpc_staging" {
  source = "../modules/vpc/"

  environment_name         = "Staging"
  vpc_cidr                 = "10.1.0.0/16"
  public_subnet_cidr_az_a  = ["10.1.0.0/24"]
  private_subnet_cidr_az_a = ["10.1.12.0/24"]

  additional_tags = {
    Environment = "Staging"
    Owner       = "Myself"
  }
}

module "vpc_production" {
  source = "../modules/vpc/"

  environment_name         = "Production"
  vpc_cidr                 = "10.2.0.0/16"
  public_subnet_cidr_az_a  = ["10.2.0.0/24"]
  private_subnet_cidr_az_a = ["10.2.12.0/24"]

  additional_tags = {
    Environment = "Production"
    Owner       = "Myself"
  }
}

#another env 