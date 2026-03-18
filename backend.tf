provider "aws" {
      region = "us-east-2"
      profile = "configs"
      shared_credentials_files = ["/home/sachin/.aws/credentials"]
    
}

#Partitionkey = LockID
terraform {
    backend "s3" {
        bucket = "tfcbzb64"
        key = "terraform.tfstate"
        dynamodb_table = "cbztf"
        region = "us-east-1"
        profile = "configs"
        shared_credentials_files = ["/home/sachin/.aws/credentials"]
    }
}

resource "aws_instance" "example" {
   instance_type = "t3.micro"
   ami = "ami-0b0b78dcacbab728f"
    key_name = "ohio"
   vpc_security_group_ids = [ "sg-00c5f7f4a54597853" ]
}

