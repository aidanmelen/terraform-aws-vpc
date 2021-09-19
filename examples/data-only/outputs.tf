# output "vpc_data_only" {
#   description = "The AWS data-only module outputs"
#   value       = module.vpc_data_only
# }

# uncomment to compare with module outputs
# output "vpc" {
#   description = "The AWS vpc module outputs"
#   value       = module.vpc.vpc_id
# }
output "vpc" {
  description = "The AWS vpc module outputs"
  value       = module.vpc.vpc_id
}