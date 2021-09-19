data "aws_vpc" "vpc" {
  id = var.vpc_id
}

data "aws_arn" "vpc" {
  arn = data.aws_vpc.vpc.arn
}