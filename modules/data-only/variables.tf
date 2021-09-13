variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
  default     = "vpc-080e9d66f63b9459f" # null
}

variable "retrieve_subnets" {
  description = "Whether to retrieve subnet data."
  type        = bool
  default     = true
}

variable "subnet_groups_patterns" {
  description = "A map of subnet group names to regex patterns."
  type = any
  default = {
    private     = "^.*private.*"
    public      = "^.*public.*"
    database    = "^.*db.*"
    elasticache = "^.*elasticache.*"
    redshift    = "^.*redshift.*"
    intra       = "^.*intra.*"
  }
}

variable "route_table_groups_patterns" {
  description = "A map of route table group names to regex patterns."
  type = any
  default = {
    private     = "*private*"
    public      = "*public*"
    database    = "*db*"
    elasticache = "*elasticache*"
    redshift    = "*redshift*"
    intra       = "*intra*"
  }
}
