terraform init                                                                                        
terraform apply                                                                                       
terraform plan 
aws_vpc.vpc_aula: Refreshing state... [id=vpc-003bca47479697285]

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_vpc.vpc_aula will be updated in-place
  ~ resource "aws_vpc" "vpc_aula" {
        id                                   = "vpc-003bca47479697285"
      ~ tags                                 = {
          ~ "Name" = "vpc-terraform" -> "vpc-manual"
        }
      ~ tags_all                             = {
          ~ "Name" = "vpc-terraform" -> "vpc-manual"
        }
        # (19 unchanged attributes hidden)
    }

Plan: 0 to add, 1 to change, 0 to destroy.