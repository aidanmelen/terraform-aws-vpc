data "aws_subnet_ids" "subnet" {
  count  = var.retrieve_subnets ? 1 : 0
  vpc_id = var.vpc_id
}

data "aws_subnet" "subnet" {
  for_each = toset(local.subnet_ids)
  vpc_id   = var.vpc_id
  id       = each.value
}

locals {
  subnet_ids    = var.retrieve_subnets ? one(data.aws_subnet_ids.subnet.*.ids) : []
  subnets       = var.retrieve_subnets ? data.aws_subnet.subnet.* : []
  subnet_groups = { for group, pattern in var.subnet_groups_patterns : group => [for sid, s in data.aws_subnet.subnet : s if length(regexall(pattern, lookup(s.tags, "Name", ""))) > 0] }
  subnet_groups_to_subnet_ids = { for group, subnets in local.subnet_groups : group => [ for s in subnets : s.id ] }
  subnet_ids_to_subnet_groups = { for sid, group in transpose(local.subnet_groups_to_subnet_ids) : sid => group[0] }
}

output "subnet_groups_to_subnet_ids" {
  value = local.subnet_groups_to_subnet_ids
}

output "subnet_ids_to_subnet_groups" {
  value = local.subnet_ids_to_subnet_groups
}