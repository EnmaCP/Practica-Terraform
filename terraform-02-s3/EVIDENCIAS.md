 1 try { . "c:\Users\Enma\AppData\Local\Programs\Microsoft VS Code\7debcd0e2a\resources\app\out\vs\workbench\con...
   2 cd .\terraform-02-s3\                                                                                           
   3 terraform init                                                                                                  
   4 terraform plan                                                                                                  
   5 $Env:AWS_ACCESS_KEY_ID = "ASIAX5GRLARZSW3OVUQ3"...                                                              
   6 aws sts get-caller-identity                                                                                     
   7 terraform init                                                                                                  
   8 terraform apply                                                                                                 
   9 terraform apply           
   PROBLEMA EN TERRAFORM APPLY
   PS C:\Users\Enma\Documents\2º DAM\devOps\01- Terraform\ejercicios terraform\terraform-02-s3> terraform apply 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with
the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.bucket_aula will be created
  + resource "aws_s3_bucket" "bucket_aula" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = "cambia-este-nombre-por-uno-unico"
      + bucket_domain_name          = (known after apply)
      + bucket_namespace            = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_region               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = "us-east-1"
      + request_payer               = (known after apply)
      + tags                        = {
          + "Name" = "terraform-s3-aula"
        }
      + tags_all                    = {
          + "Name" = "terraform-s3-aula"
        }
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_s3_bucket.bucket_aula: Creating...
aws_s3_bucket.bucket_aula: Still creating... [00m10s elapsed]
aws_s3_bucket.bucket_aula: Still creating... [00m20s elapsed]
aws_s3_bucket.bucket_aula: Still creating... [00m30s elapsed]
aws_s3_bucket.bucket_aula: Still creating... [00m40s elapsed]
aws_s3_bucket.bucket_aula: Still creating... [00m50s elapsed]
aws_s3_bucket.bucket_aula: Still creating... [01m00s elapsed]
aws_s3_bucket.bucket_aula: Still creating... [01m10s elapsed]
Stopping operation...