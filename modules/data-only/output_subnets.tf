# # all
# output "all_subnet_ids" {
#   value = local.subnet_ids
# }

# output "all_subnet_data" {
#   value = local.subnets
# }

# output "all_subnet_group_data" {
#   value = local.subnet_groups
# }

# output "all_subnet_groups_data" {
#   value = local.subnet_groups
# }

# # ids
# output "private_subnets" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "private", []) : s.id]
# }

# output "public_subnets" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "public", []) : s.id]
# }

# output "outpost_subnets" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "outpost", []) : s.id]
# }

# output "database_subnets" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "database", []) : s.id]
# }

# output "elasticache_subnets" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "elasticache", []) : s.id]
# }

# output "redshift_subnets" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "redshift", []) : s.id]
# }

# output "intra_subnets" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "intra", []) : s.id]
# }

# output "private_subnet_arns" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "private", []) : s.arn]
# }

# # arns
# output "public_subnet_arns" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "public", []) : s.arn]
# }

# output "outpost_subnet_arns" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "outpost", []) : s.arn]
# }

# output "database_subnet_arns" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "database", []) : s.arn]
# }

# output "elasticache_subnet_arns" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "elasticache", []) : s.arn]
# }

# output "redshift_subnet_arns" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "redshift", []) : s.arn]
# }

# output "intra_subnet_arns" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "intra", []) : s.arn]
# }

# # cidr blocks
# output "private_subnet_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "private", []) : s.cidr_block]
# }

# output "public_subnet_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "public", []) : s.cidr_block]
# }

# output "outpost_subnet_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "outpost", []) : s.cidr_block]
# }

# output "database_subnet_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "database", []) : s.cidr_block]
# }

# output "elasticache_subnet_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "elasticache", []) : s.cidr_block]
# }

# output "redshift_subnet_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "redshift", []) : s.cidr_block]
# }

# output "intra_subnet_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "intra", []) : s.cidr_block]
# }

# # ipv6 cidr blocks
# output "private_subnet_ipv6_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "private", []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null]
# }

# output "public_subnet_ipv6_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "public", []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null]
# }

# output "outpost_subnet_ipv6_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "outpost", []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null]
# }

# output "database_subnet_ipv6_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "database", []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null]
# }

# output "elasticache_subnet_ipv6_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "elasticache", []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null]
# }

# output "redshift_subnet_ipv6_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "redshift", []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null]
# }

# output "intra_subnet_ipv6_cidr_blocks" {
#   description = "TODO"
#   value       = [for s in lookup(local.subnet_groups, "intra", []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null]
# }