# AWS VPC Data-only Terraform sub-module

Terraform data-only sub-module which retrieves information about an AWS VPC.

## Usage

See [`data-only example`](../../examples/data-only) for working example to reference:

```hcl
module "endpoints" {
  source = "terraform-aws-modules/vpc/aws//modules/data-only"

  vpc_id = "vpc-12345678"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
