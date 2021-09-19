data "aws_security_group" "default" {
  name   = "default"
  vpc_id = var.vpc_id
}

data "aws_arn" "default_aws_security_group_arn" {
  arn = data.aws_security_group.default.arn
}