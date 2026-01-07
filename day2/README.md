# Terraform Day 2

## Checking few details

```bash
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
[ec2-user@ip-172-31-16-77 day2]$ ls
ec2.tf  provider.tf
[ec2-user@ip-172-31-16-77 day2]$ ls -a
.  ..  .terraform  .terraform.lock.hcl  ec2.tf  provider.tf
[ec2-user@ip-172-31-16-77 day2]$ tree .terraform
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
```

## Checking with fmt and validate

```bash
ec2-user@ip-172-31-16-77 day2]$ ls
ec2.tf  provider.tf
[ec2-user@ip-172-31-16-77 day2]$ terraform fmt
provider.tf
[ec2-user@ip-172-31-16-77 day2]$ terraform validate
Success! The configuration is valid.

[ec2-user@ip-172-31-16-77 day2]$ terraform validate
╷
│ Error: Missing required argument
│
│   with aws_instance.example,
│   on ec2.tf line 1, in resource "aws_instance" "example":
│    1: resource "aws_instance" "example" {
│
│ "ami": one of `ami,launch_template` must be specified
╵
[ec2-user@ip-172-31-16-77 day2]$ terraform validate
Success! The configuration is valid.
```

### Update output

```bash
terraform apply
terraform output

ashu-vm-id = "i-04d5555cdd4cbef48"
ashu-vm-publicIP = "44.193.39.58"
```

### Terraform variable supply options

```bash
487  terraform plan
488  terraform plan -var vm-name=ashutoshh-new-vm
489  history
490  terraform apply
491  history
492  terraform apply -var vm-name=ashutoshh-new-vm
```
### terraform tfvars autoloading file for variable values

<img src="var1.png">

### few more terraform commands

```
 492  terraform apply  -var vm-name=ashutoshh-new-vm 
  493  history 
  494  terraform apply  -var vm-name=ashutoshh-new-vm  
  495  history 
  496  terraform plan  -var-file ashu-values.tfvars 
  497  history 
  498  terraform plan  -var-file=ashu-values.tfvars 
  499  terraform plan  -var-file="ashu-values.tfvars" 
  500  history 
  501  terraform plan  -var-file  stage.tfvars 
  502  history 

```

### terraform tfstate storing it remotely 

<img src="tfrm.png">

### some basic github repo operations 

### clone repo 

```
git   clone https://github.com/redashu/boa-ashu-8thjan2026.git 
Cloning into 'boa-ashu-8thjan2026'...
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0 (from 0)
Receiving objects: 100% (3/3), done.
[ec2-user@ip-172-31-16-77 ashu-project]$ ls
boa-ashu-8thjan2026  day1  day2  day3
[ec2-user@ip-172-31-16-77 ashu-project]$ 

```

## Understanding clone 

<img src="clone.png">


### copy code to local repo 

```
[ec2-user@ip-172-31-16-77 ashu-project]$ ls
boa-ashu-8thjan2026  day1  day2  day3
[ec2-user@ip-172-31-16-77 ashu-project]$ 
[ec2-user@ip-172-31-16-77 ashu-project]$ 
[ec2-user@ip-172-31-16-77 ashu-project]$ ls  day2/
ashu-values.tfvars  outputs.tf   stage.tfvars              terraform.tfvars
ec2.tf              provider.tf  terraform.tfstate.backup  varirables.tf
[ec2-user@ip-172-31-16-77 ashu-project]$ 
[ec2-user@ip-172-31-16-77 ashu-project]$ cp day2/*.tf   boa-ashu-8thjan2026/
[ec2-user@ip-172-31-16-77 ashu-project]$ 
[ec2-user@ip-172-31-16-77 ashu-project]$ 
[ec2-user@ip-172-31-16-77 ashu-project]$ cp day2/terraform.tfvars   boa-ashu-8thjan2026/
[ec2-user@ip-172-31-16-77 ashu-project]$ 

```
### git add & commit 

```
 cd boa-ashu-8thjan2026/
[ec2-user@ip-172-31-16-77 boa-ashu-8thjan2026]$ ls
README.md  ec2.tf  outputs.tf  provider.tf  terraform.tfvars  varirables.tf
[ec2-user@ip-172-31-16-77 boa-ashu-8thjan2026]$ git add  . 
[ec2-user@ip-172-31-16-77 boa-ashu-8thjan2026]$ git commit  -m "sample terraform code"
[master f4bcb39] sample terraform code
 Committer: EC2 Default User <ec2-user@ip-172-31-16-77.ec2.internal>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 7 files changed, 83 insertions(+)
 create mode 100644 .gitignore
 create mode 100644 .terraform.lock.hcl
 create mode 100644 ec2.tf
 create mode 100644 outputs.tf
 create mode 100644 provider.tf
 create mode 100644 terraform.tfvars
 create mode 100644 varirables.tf

 ```
 