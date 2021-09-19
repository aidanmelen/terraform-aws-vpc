data "aws_route_tables" "rtb" {
  count  = var.retrieve_route_tables == true ? 1 : 0
  vpc_id = var.vpc_id

  filter {
    name   = "association.subnet-id"
    values = local.subnet_ids
  }
}

data "aws_route_table" "rtb" {
  for_each = local.route_table_ids
  vpc_id   = var.vpc_id
  route_table_id = each.value
}

locals {
  route_table_ids = var.retrieve_route_tables ? one(data.aws_route_tables.rtb.*.ids) : []
  # route_table_id_to_subnet_ids = { for rtb_id, rtb in data.aws_route_table.rtb.* : rtb_id => [ for a in rtb.associations : a.subnet_id ] }
  # route_table_groups = { for group, pattern in var.subnet_groups_patterns : group => data.aws_route_table.rtb.0.associations.0.subnet_id }
                      # { for group, pattern in var.subnet_groups_patterns : group => [for sid, s in data.aws_subnet.subnet : s if length(regexall(pattern, lookup(s.tags, "Name", ""))) > 0] }
}