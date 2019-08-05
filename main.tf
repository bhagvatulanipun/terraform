locals {
  project_name = "locus"

  common_tags = {
    ManagedBy   = "Terraform"
  }
}

module "create_vpc" {
  source              = "./modules/vpc"
  project_name        = "${local.project_name}"
  vpc_cidr            = "172.20.0.0/16"
  common_tags         = "${local.common_tags}"

  public_subnets = [{
    az = "ap-south-1a"

    cidr = "172.20.2.0/24"
  },
    {
      az = "ap-south-1b"

      cidr = "172.20.4.0/24"
    },
  ]

  app_private_subnets = [{
    az = "ap-south-1a"

    cidr = "172.20.6.0/24"
  }
  ]

  enable_dns_support   = true
  enable_dns_hostnames = true
}


