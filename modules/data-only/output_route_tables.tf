# # all
# output "all_route_table_data" {
#   value = [for rtb in data.aws_route_tables.rtb : rtb]
# }

# output "all_route_table_ids" {
#   value = [for rtb in data.aws_route_tables.rtb : rtb.id]
# }

# output "route_table" {
#   value = data.aws_route_table.rtb
# }

# output "route_table_groups" {
#   value = local.route_table_groups
# }