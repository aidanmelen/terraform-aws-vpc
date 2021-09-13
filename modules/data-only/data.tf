# Subnets
data "aws_subnet_ids" "subnet" {
  count  = var.retrieve_subnets ? 1 : 0
  vpc_id = var.vpc_id
}

data "aws_subnet" "subnet" {
  for_each = toset(local.subnet_ids)
  vpc_id   = var.vpc_id
  id       = each.value
}

# # Route Tables
# data "aws_route_tables" "rtb" {
#   vpc_id = var.vpc_id
# }

# # Security Groups
# data "aws_security_group" "default" {
#   name   = "default"
#   vpc_id = var.vpc_id
# }








# data "aws_vpc_endpoint_service" "dynamodb" {
#   service = "dynamodb"

#   filter {
#     name   = "service-type"
#     values = ["Gateway"]
#   }
# }

# data "aws_iam_policy_document" "dynamodb_endpoint_policy" {
#   statement {
#     effect    = "Deny"
#     actions   = ["dynamodb:*"]
#     resources = ["*"]

#     principals {
#       type        = "*"
#       identifiers = ["*"]
#     }

#     condition {
#       test     = "StringNotEquals"
#       variable = "aws:sourceVpce"

#       values = [data.aws_vpc_endpoint_service.dynamodb.id]
#     }
#   }
# }

# data "aws_iam_policy_document" "generic_endpoint_policy" {
#   statement {
#     effect    = "Deny"
#     actions   = ["*"]
#     resources = ["*"]

#     principals {
#       type        = "*"
#       identifiers = ["*"]
#     }

#     condition {
#       test     = "StringNotEquals"
#       variable = "aws:sourceVpce"

#       values = [data.aws_vpc_endpoint_service.dynamodb.id]
#     }
#   }
# }
