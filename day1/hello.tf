
output "hello" {
  value =   "Hello world from terraform"
}

output "hello1" {
  value =   "Hello world from terraform by ashutoshh"
}

# aws provider details
provider "aws" {
  region = "us-east-1" # name of region 
#   access_key = ""
#   secret_key = ""
}