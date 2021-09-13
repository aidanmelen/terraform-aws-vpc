locals {
  subnet_ids    = var.retrieve_subnets ? one(data.aws_subnet_ids.subnet.*.ids) : []
  subnets       = var.retrieve_subnets ? data.aws_subnet.subnet.* : []
  subnet_groups = { for group, pattern in var.subnet_groups_patterns : group => [ for sid, s in data.aws_subnet.subnet : s if length(regexall(pattern, lookup(s.tags, "Name", ""))) > 0 ] }

  
  # ids
  private_subnets     = [ for s in lookup(local.subnet_groups, "private",     []) : s.id ]
  public_subnets      = [ for s in lookup(local.subnet_groups, "public",      []) : s.id ]
  outpost_subnets     = [ for s in lookup(local.subnet_groups, "outpost",     []) : s.id ]
  database_subnets    = [ for s in lookup(local.subnet_groups, "database",    []) : s.id ]
  elasticache_subnets = [ for s in lookup(local.subnet_groups, "elasticache", []) : s.id ]
  redshift_subnets    = [ for s in lookup(local.subnet_groups, "redshift",    []) : s.id ]
  intra_subnets       = [ for s in lookup(local.subnet_groups, "intra",       []) : s.id ]
  
  # arns
  private_subnet_arns     = [ for s in lookup(local.subnet_groups, "private",     []) : s.arn ]
  public_subnet_arns      = [ for s in lookup(local.subnet_groups, "public",      []) : s.arn ]
  outpost_subnet_arns     = [ for s in lookup(local.subnet_groups, "outpost",     []) : s.arn ]
  database_subnet_arns    = [ for s in lookup(local.subnet_groups, "database",    []) : s.arn ]
  elasticache_subnet_arns = [ for s in lookup(local.subnet_groups, "elasticache", []) : s.arn ]
  redshift_subnet_arns    = [ for s in lookup(local.subnet_groups, "redshift",    []) : s.arn ]
  intra_subnet_arns       = [ for s in lookup(local.subnet_groups, "intra",       []) : s.arn ]

  # cidr blocks
  private_subnet_cidr_blocks     = [ for s in lookup(local.subnet_groups, "private",     []) : s.cidr_block ]
  public_subnet_cidr_blocks      = [ for s in lookup(local.subnet_groups, "public",      []) : s.cidr_block ]
  outpost_subnet_cidr_blocks     = [ for s in lookup(local.subnet_groups, "outpost",     []) : s.cidr_block ]
  database_subnet_cidr_blocks    = [ for s in lookup(local.subnet_groups, "database",    []) : s.cidr_block ]
  elasticache_subnet_cidr_blocks = [ for s in lookup(local.subnet_groups, "elasticache", []) : s.cidr_block ]
  redshift_subnet_cidr_blocks    = [ for s in lookup(local.subnet_groups, "redshift",    []) : s.cidr_block ]
  intra_subnet_cidr_blocks       = [ for s in lookup(local.subnet_groups, "intra",       []) : s.cidr_block ]

  # ipv6 cidr blocks
  private_subnet_ipv6_cidr_blocks     = [ for s in lookup(local.subnet_groups, "private",     []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null ]
  public_subnet_ipv6_cidr_blocks      = [ for s in lookup(local.subnet_groups, "public",      []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null ]
  outpost_subnet_ipv6_cidr_blocks     = [ for s in lookup(local.subnet_groups, "outpost",     []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null ]
  database_subnet_ipv6_cidr_blocks    = [ for s in lookup(local.subnet_groups, "database",    []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null ]
  elasticache_subnet_ipv6_cidr_blocks = [ for s in lookup(local.subnet_groups, "elasticache", []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null ]
  redshift_subnet_ipv6_cidr_blocks    = [ for s in lookup(local.subnet_groups, "redshift",    []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null ]
  intra_subnet_ipv6_cidr_blocks       = [ for s in lookup(local.subnet_groups, "intra",       []) : s.ipv6_cidr_block if s.ipv6_cidr_block != null ]
}