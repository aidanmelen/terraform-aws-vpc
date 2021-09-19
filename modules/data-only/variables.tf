variable "vpc_id" {
  description = "The ID of the VPC."
  type        = string
}

variable "retrieve_subnets" {
  description = "Whether to retrieve subnet data."
  type        = bool
  default     = true
}

variable "retrieve_route_tables" {
  description = "Whether to retrieve route_tables data."
  type        = bool
  default     = true
}

variable "retrieve_igw" {
  description = "Whether to retrieve internet gateway data."
  type        = bool
  default     = true
}

variable "retrieve_natgw" {
  description = "Whether to retrieve nat gateway data."
  type        = bool
  default     = false
}

variable "retrieve_vgw" {
  description = "Whether to retrieve vpn gateway data."
  type        = bool
  default     = false
}

variable "retrieve_cgw" {
  description = "Whether to retrieve customer gateway data."
  type        = bool
  default     = false
}

variable "subnet_groups_patterns" {
  description = "A map of subnet group names to regex patterns."
  type        = any
  default = {
    private     = "^.*private.*"
    public      = "^.*public.*"
    database    = "^.*db.*"
    elasticache = "^.*elasticache.*"
    redshift    = "^.*redshift.*"
    intra       = "^.*intra.*"
  }
}