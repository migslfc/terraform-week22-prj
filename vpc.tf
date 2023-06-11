module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "wk22-vpc"
  cidr = "10.10.0.0/16"

  azs             = ["us-east-1a", "us-east-1e"]
  private_subnets = ["10.10.3.0/24", "10.10.4.0/24"]
  public_subnets  = ["10.10.1.0/24", "10.10.2.0/24"]

  enable_nat_gateway   = true
  enable_dns_support   = true
  enable_dns_hostnames = true
  single_nat_gateway   = false
  reuse_nat_ips        = true
  external_nat_ip_ids  = aws_eip.ngw.*.id

  tags = {
    Name      = "wk22-vpc"
    Project   = "Week22-LastOneBaby"
    Terraform = "true"
  }
}

output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "private_subnets" {
  value = module.vpc.private_subnets
}
