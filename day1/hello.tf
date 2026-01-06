# aws provider details
provider "aws" {
  region = "us-east-1" # name of region 
#   access_key = ""
#   secret_key = ""
}

# resource block  under provider some action to be taken 

resource "aws_instance" "example" {
    ami = "ami-068c0051b15cdb816"
    instance_type = "t3.micro"


}

output "hello" {
  value =   "Hello world from terraform"
}

output              "hello1"    {
  value =   "Hello world from terraform by ashutoshh"


}