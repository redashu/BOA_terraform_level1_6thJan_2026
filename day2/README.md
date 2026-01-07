## checking few details 

```
ec2-user@ip-172-31-16-77 ashu-project]$ ls
day1  day2  day3
[ec2-user@ip-172-31-16-77 ashu-project]$ cd day2
[ec2-user@ip-172-31-16-77 day2]$ ls
ec2.tf  provider.tf
[ec2-user@ip-172-31-16-77 day2]$ terraform init 
Initializing the backend...
Initializing provider plugins...
- Finding hashicorp/aws versions matching "6.27.0"...
- Installing hashicorp/aws v6.27.0...
- Installed hashicorp/aws v6.27.0 (signed by HashiCorp)
Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
[ec2-user@ip-172-31-16-77 day2]$ 
[ec2-user@ip-172-31-16-77 day2]$ 
[ec2-user@ip-172-31-16-77 day2]$ 
[ec2-user@ip-172-31-16-77 day2]$ 
[ec2-user@ip-172-31-16-77 day2]$ 
[ec2-user@ip-172-31-16-77 day2]$ ls
ec2.tf  provider.tf
[ec2-user@ip-172-31-16-77 day2]$ ls  -a
.  ..  .terraform  .terraform.lock.hcl  ec2.tf  provider.tf
[ec2-user@ip-172-31-16-77 day2]$ tree  .terraform
.terraform
└── providers
    └── registry.terraform.io
        └── hashicorp
            └── aws
                └── 6.27.0
                    └── linux_amd64
                        ├── LICENSE.txt
                        └── terraform-provider-aws_v6.27.0_x5

6 directories, 2 files
[ec2-user@ip-172-31-16-77 day2]$ 

```

## checking with fmt and validate 

```
ec2-user@ip-172-31-16-77 day2]$ ls
ec2.tf  provider.tf
[ec2-user@ip-172-31-16-77 day2]$ terraform  fmt
provider.tf
[ec2-user@ip-172-31-16-77 day2]$ terraform  validate
Success! The configuration is valid.

[ec2-user@ip-172-31-16-77 day2]$ terraform  validate
╷
│ Error: Missing required argument
│ 
│   with aws_instance.example,
│   on ec2.tf line 1, in resource "aws_instance" "example":
│    1: resource "aws_instance" "example" {
│ 
│ "ami": one of `ami,launch_template` must be specified
╵
[ec2-user@ip-172-31-16-77 day2]$ terraform  validate
Success! The configuration is valid.

[ec2-user@ip-172-31-16-77 day2]$ 

```

### to update output 

```
terraform apply 
terraform output

===>
terraform output
ashu-vm-id = "i-04d5555cdd4cbef48"
ashu-vm-publicIP = "44.193.39.58"
[ec2-user@ip-172-31-16-77 day2]$ 

```
