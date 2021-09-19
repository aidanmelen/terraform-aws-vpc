data "aws_internet_gateway" "igw" {
  count = var.retrieve_igw == true ? 1 : 0

  filter {
    name   = "attachment.vpc-id"
    values = [var.vpc_id]
  }
}

data "aws_arn" "igw" {
  count = var.retrieve_igw == true ? 1 : 0
  arn   = data.aws_internet_gateway.igw.0.arn
}

data "aws_nat_gateway" "nat" {
  count = var.retrieve_natgw == true ? 1 : 0

  filter {
    name   = "vpc-id"
    values = [var.vpc_id]
  }
}

data "aws_vpn_gateway" "vgw" {
  count = var.retrieve_vgw == true ? 1 : 0

  filter {
    name   = "attachment.vpc-id"
    values = [var.vpc_id]
  }
}

# data "aws_customer_gateway" "cgw" {
#   filter {
#     name   = "tag:Name"
#     values = [data.aws_vpc.vpc.name]
#   }
# }