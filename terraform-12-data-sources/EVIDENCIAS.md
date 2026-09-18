terraform init                                                                                        
terraform plan 
DA ERROR EL TERRAFORM PLAN
Planning failed. Terraform encountered an error while generating this plan.

╷
│ Error: reading EC2 AMIs: operation error EC2: DescribeImages, https response error StatusCode: 403, RequestID: 23ff8138-81c9-4ef0-af6d-32a29d77da5a, api error UnauthorizedOperation: You are not authorized to perform this operation. User: arn:aws:sts::543752389747:assumed-role/voclabs/user4549459=a29316@svalero.com is not authorized to perform: ec2:DescribeImages with an explicit deny in an identity-based policy: arn:aws:iam::543752389747:policy/voc-cancel-cred
│ 
│   with data.aws_ami.amazon_linux,
│   on main.tf line 4, in data "aws_ami" "amazon_linux":
│    4: data "aws_ami" "amazon_linux" {
│ 
╵